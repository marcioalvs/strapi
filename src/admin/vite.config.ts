// src/admin/vite.config.ts
import { mergeConfig, type UserConfig } from 'vite';

export default (config: UserConfig) => {
  return mergeConfig(config, {
    server: {
      allowedHosts: [
        'localhost',
        'cms-poc-strapi.jzqlap.easypanel.host',
        // ...
      ],
    },
  });
};
