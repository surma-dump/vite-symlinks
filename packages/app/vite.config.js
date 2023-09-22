import { defineConfig } from "vite";

export default defineConfig({
  plugins: [
    {
      load(id, loader) {
        console.log({ id, loader });
      },
    },
  ],
  server: {
    watch: {
      followSymlinks: false,
    },
  },
  optimizeDeps: {
    disabled: true,
  },
  resolve: {
    preserveSymlinks: true,
  },
});
