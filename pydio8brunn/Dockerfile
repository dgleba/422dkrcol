# Pydio 8 with MySQL on PHP 7
# Copyright (C) 2017 Rodrigo Martínez <dev@brunneis.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM centos:7.3.1611
MAINTAINER Rodrigo Martínez <dev@brunneis.com>

################################################
# PYDIO 8
################################################

ENV PYDIO_VERSION=8.0.1 \
LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

# Install Apache httpd and php
RUN curl -s https://setup.ius.io | bash \
    && yum -y install \
        wget \
        httpd \
        fontconfig-config \
        fonts-dejavu-core \
        php71u \
        php71u-cli \
        php71u-mysqlnd\
        php71u-gd \
        php71u-mcrypt \
        php71u-json \
        php71u-xml \
        php71u-opcache \
        php71u-intl \
        ssl-cert \
    && yum clean all

# Configure php.ini
RUN \
    sed -i "s/output_buffering\s*=\s*4096/output_buffering = Off/g" /etc/php.ini \
    && sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php.ini \
    && sed -i "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 20G/g" /etc/php.ini \
    && sed -i "s/post_max_size\s*=\s*8M/post_max_size = 20G/g" /etc/php.ini

# Install Pydio
WORKDIR /var/www
RUN rm -rf html \
    && wget https://download.pydio.com/pub/core/archives/pydio-core-${PYDIO_VERSION}.tar.gz \
    && tar xf pydio-core-${PYDIO_VERSION}.tar.gz \
    && rm -rf pydio-core-${PYDIO_VERSION}.tar.gz \
    && mv pydio-core-${PYDIO_VERSION} html \
    && chown -R apache:apache html \
    && awk '/<Directory "\/var\/www\/html">/,/AllowOverride None/{sub("None","All",$0)}{print}' \
    /etc/httpd/conf/httpd.conf > tmp && mv -f tmp /etc/httpd/conf/httpd.conf

# Expose ports
EXPOSE 80

# Expose volumes
VOLUME /var/www/html/data/files
VOLUME /var/www/html/data/personal

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
