FROM wordpress:latest
MAINTAINER Bruno Paz "brunopaz@azpay.com.br"

ENV WOOCOMMERCE_VERSION 3.2.6
ENV WOOCOMMERCE_UPSTREAM_VERSION 3.2.6
RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y  unzip wget

RUN wget https://downloads.wordpress.org/plugin/woocommerce.${WOOCOMMERCE_VERSION}.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip

RUN wget https://github.com/AZPay/WooCommerce-Azpay/archive/master.zip -O /tmp/temp.zip \
    && cd /usr/src/wordpress/wp-content/plugins \
    && unzip /tmp/temp.zip \
    && rm /tmp/temp.zip
