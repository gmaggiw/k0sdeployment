from fastapi import FastAPI
import socket
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    host_name = socket.gethostname()
    ip_address = socket.gethostbyname(host_name)
    return {"hostname": host_name, "ip": ip_address}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
