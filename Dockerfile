FROM alpine

RUN crontab -l | { cat; echo "00    00       *       *       *       run-parts /etc/periodic/midnight"; } | crontab -
CMD ['crond', '&&', 'gulp']
