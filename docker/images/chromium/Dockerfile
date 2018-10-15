FROM alpharecon19/desktop

COPY download.sh /home/chromium/

RUN chmod a+x /home/chromium/download.sh \
    && groupadd -r chromium \
    && useradd -r -g chromium chromium \
    && mkdir -p /home/chrome/Downloads \
    && chown -R chromium:chromium /home/chromium \
    && mkdir -p /home/chromium/.config/gtk-3.0/ \
    && echo "[Settings]" > /home/chromium/.config/gtk-3.0/settings.ini \
    && echo "gtk-application-prefer-dark-theme=1" >> /home/chromium/.config/gtk-3.0/settings.ini

WORKDIR /home/chromium

USER chromium

RUN ./download.sh

ENTRYPOINT ["/home/chromium/latest/chrome"]

CMD [ "--no-gpu", "--remote-debugging-port=9222", "--no-sandbox" ]
