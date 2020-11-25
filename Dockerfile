FROM centos:7

# docker-entrypoint.shを転送
COPY . /var/tmp

# docker-entrypoint.shを移動させて、実行権限をつける
RUN mv /var/tmp/docker-entrypoint.sh /usr/local/bin; \
    chmod +x /usr/local/bin/docker-entrypoint.sh

# デフォルトで実行する処理や初期化処理
# 起動時に常に実行される
ENTRYPOINT ["docker-entrypoint.sh"]

# デフォルトでENTRYPOINTの引数として渡される。メインの処理になる
# docker run で引数を渡すと上書きされる
CMD ["echo" , "my hello..."]