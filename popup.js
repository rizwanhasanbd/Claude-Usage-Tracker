document.getElementById('debug').addEventListener('click', () => {
	browser.tabs.create({ url: browser.runtime.getURL('debug.html') });
	window.close();
});

document.getElementById('github').addEventListener('click', () => {
	browser.tabs.create({ url: 'https://github.com/rizwanhasanbd/' });
	window.close();
});
