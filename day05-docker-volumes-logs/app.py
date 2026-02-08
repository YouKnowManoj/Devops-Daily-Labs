from http.server import BaseHTTPRequestHandler, HTTPServer
from datetime import datetime

LOG_FILE = "/logs/access.log"

class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        with open(LOG_FILE, "a") as f:
            f.write(f"{datetime.now()} - Request received\n")

        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(b"Hello from Docker with Logs!")

server = HTTPServer(("0.0.0.0", 8080), SimpleHandler)
server.serve_forever()