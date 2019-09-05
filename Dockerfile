FROM alpine
...
RUN mkdir /etc/periodic/midnight
ADD ./scripts/compute_leaderboards /etc/periodic/midnight/compute_leaderboards
RUN chmod +x /etc/periodic/midnight/compute_leaderboards
RUN crontab -l | { cat; echo "00    00       *       *       *       run-parts /etc/periodic/midnight"; } | crontab -
CMD ['crond', '&&', 'gulp']
