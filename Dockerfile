FROM nginx:alpine

COPY index.html      /usr/share/nginx/html/index.html
COPY privacidad.html /usr/share/nginx/html/privacidad.html
COPY terminos.html   /usr/share/nginx/html/terminos.html
COPY sitemap.xml     /usr/share/nginx/html/sitemap.xml
COPY robots.txt      /usr/share/nginx/html/robots.txt
COPY logo.png        /usr/share/nginx/html/logo.png
COPY logo.webp       /usr/share/nginx/html/logo.webp
COPY og-image.jpg    /usr/share/nginx/html/og-image.jpg
COPY favicon.png     /usr/share/nginx/html/favicon.png
COPY styles.css      /usr/share/nginx/html/styles.css
COPY nginx.conf      /etc/nginx/conf.d/default.conf

RUN echo '<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><title>404 — Digitrion</title><style>body{font-family:sans-serif;background:#020b1a;color:#eef2ee;display:flex;flex-direction:column;align-items:center;justify-content:center;height:100vh;margin:0;gap:16px}</style></head><body><h1 style="color:#00C8EE">404</h1><p>Página no encontrada.</p><a href="/" style="color:#00C8EE">Volver al inicio</a></body></html>' > /usr/share/nginx/html/404.html

RUN echo '<!DOCTYPE html><html lang="es"><head><meta charset="UTF-8"><title>Error — Digitrion</title><style>body{font-family:sans-serif;background:#020b1a;color:#eef2ee;display:flex;flex-direction:column;align-items:center;justify-content:center;height:100vh;margin:0;gap:16px}</style></head><body><h1 style="color:#00C8EE">Algo salió mal</h1><p>Estamos trabajando para solucionarlo. Vuelve a intentarlo en unos minutos.</p><a href="/" style="color:#00C8EE">Volver al inicio</a></body></html>' > /usr/share/nginx/html/50x.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
