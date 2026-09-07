import { test, expect } from '@playwright/test';

const BASE_URL = 'http://localhost:8080';

// Landing page ("/" redirects here) with one <section> per module.
const LANDING = '/ui/pages/main';

const SECTION_HEADINGS = [
  'Simple Pages using plain JTE files',
  'Simple Pages using View Components',
  'Page Patterns',
  'UI Patterns',
  'HTMX Patterns',
];

// Every demo route the landing page links to.
const DEMO_ROUTES = [
  '/s01d01', '/s01d02', '/s01d03', '/s01d04', '/s01d05',
  '/ui/demos/s02simplevcdemos/s02d01',
  '/ui/demos/s02simplevcdemos/s02d02',
  '/ui/demos/s02simplevcdemos/s02d03',
  '/ui/demos/s02simplevcdemos/s02d04',
  '/ui/demos/s02simplevcdemos/s02d05',
  '/ui/s03pages/s03d01',
  '/ui/s03pages/s03d02?greeting=Hey%20You!',
  '/ui/s03pages/s03d03',
  '/ui/s03pages/s03d04p1',
  '/ui/s03pages/s03d04p2',
  '/ui/s04uipatterns/s04d01',
  '/ui/s04uipatterns/s04d02',
  '/ui/s05htmxpatterns/s05d01',
];

test('root redirects to the landing page', async ({ page }) => {
  await page.goto(BASE_URL + '/');
  await expect(page).toHaveURL(BASE_URL + LANDING);
});

test('landing page lists every module section', async ({ page }) => {
  await page.goto(BASE_URL + LANDING);
  await expect(page).toHaveTitle(/Server Side Frontend Patterns/);
  for (const heading of SECTION_HEADINGS) {
    await expect(page.locator('section.section', { hasText: heading })).toBeVisible();
  }
});

test('every demo route loads', async ({ page }) => {
  for (const route of DEMO_ROUTES) {
    const response = await page.goto(BASE_URL + route);
    expect(response?.status(), `GET ${route}`).toBe(200);
    await expect(page.locator('body')).toBeVisible();
    const text = (await page.locator('body').innerText()).trim();
    expect(text.length, `content of ${route}`).toBeGreaterThan(10);
  }
});

test('s05 url-component demo swaps the fetched fragment in', async ({ page }) => {
  await page.goto(BASE_URL + '/ui/s05htmxpatterns/s05d01');
  const target = page.locator('#my-message');
  await expect(target).toBeEmpty();
  await page.getByRole('button', { name: 'Include Component' }).click();
  await expect(target.locator('h3')).toHaveText('hello!');
});
