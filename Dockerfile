FROM reynandaptr/node-builder:v0.0.2

COPY . .

RUN pnpm install

EXPOSE 80

CMD ["/bin/sh","-c","source /etc/profile && /wait && npx prisma migrate dev --schema prisma/schema.prisma --name init && nginx -g 'daemon off;'"]
