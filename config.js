(function() {
    return {
        graphitePort: parseInt(process.env.GRAPHITE_PORT) || 2003,
        graphiteHost: process.env.GRAPHITE_HOST || "localhost",
        port: parseInt(process.env.STATSD_PORT) || 8125,
        mgmt_port: parseInt(process.env.STATSD_MANAGEMENT_PORT) || 8126,
        address_ipv6: JSON.parse(process.env.STATSD_IPV6) || true
    };
})();
