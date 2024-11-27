import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
	site: 'https://popotan2542.github.io',
	base: '/popolog/dist',
	integrations: [mdx(), sitemap()],
});
