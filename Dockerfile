FROM asciidoctor/docker-asciidoctor
MAINTAINER alsan

RUN gem install asciidoctor-pdf-cjk-kai_gen_gothic --no-ri --no-rdoc && \
    gem install --version '0.12.7' compass --no-ri --no-rdoc && \
    gem install --version '4.3.2' zurb-foundation --no-ri --no-rdoc && \
    mkdir -p /documents/build && \
    mkdir -p /usr/lib/ruby/gems/2.4.0/gems/asciidoctor-pdf-cjk-kai_gen_gothic-0.1.1/data/fonts

COPY fonts /usr/lib/ruby/gems/2.4.0/gems/asciidoctor-pdf-cjk-kai_gen_gothic-0.1.1/data/
COPY styles /documents/build

