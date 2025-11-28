/**
 * Usage:
 * <x-wc1 class="..."></x-wc1>
 */
class WC1Component extends HTMLElement {
	connectedCallback() {
		if (!this.querySelector('input')) {
			this.append(document.createElement('input'));
		}
		this.update();
	}

	static get observedAttributes() {
		return ['xclass', 'xname'];
	}

	attributeChangedCallback() {
		this.update();
	}

	update() {
		const input = this.querySelector('input');
		if (input) {
			input.classList.add(this.getAttribute('xclass'));
			input.name = this.getAttribute('xname');
		}
	}
}

export const registerWC1Component = () => {
	customElements.define('x-wc1', WC1Component);
}
