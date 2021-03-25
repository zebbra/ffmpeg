Stream = require("node-rtsp-stream");
stream = new Stream({
  name: "name",
  streamUrl: process.env.INPUT_STREAM_URL, // rtsp://83.150.38.237:9000/live
  wsPort: process.env.OUTPUT_STREAM_PORT, // 9999
  ffmpegOptions: {
    // options ffmpeg flags
    "-stats": "", // an option with no neccessary value uses a blank string
    "-r": 30, // options with required values specify the value after the key
  },
});
