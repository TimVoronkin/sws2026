FROM httpd:latest

# Enable virtual hosts include (commented out by default in httpd.conf)
RUN sed -i 's/#Include conf\/extra\/httpd-vhosts.conf/Include conf\/extra\/httpd-vhosts.conf/' \
    /usr/local/apache2/conf/httpd.conf

# Enable mod_rewrite
RUN sed -i 's/#LoadModule rewrite_module/LoadModule rewrite_module/' \
    /usr/local/apache2/conf/httpd.conf
