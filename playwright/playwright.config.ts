import { defineConfig, devices } from '@playwright/test';

/**
 * See https://playwright.dev/docs/test-configuration.
 */
export default defineConfig({
  testDir: './tests',
  fullyParallel: true,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  workers: process.env.CI ? 1 : undefined,
  reporter: 'html',
  use: {
    trace: 'on-first-retry',
  },

  projects: [
    {
      name: 'chromium',
      use: { ...devices['Desktop Chrome'] },
    },
  ],

  /* Build and start a fresh Spring Boot instance before every run.
     reuseExistingServer: false kills any running instance first. */
  webServer: {
    command: 'cd .. && mvn -q package -DskipTests && java -jar target/demo-1.0-SNAPSHOT.jar',
    url: 'http://localhost:8080',
    reuseExistingServer: false,
    timeout: 120_000,
  },
});
