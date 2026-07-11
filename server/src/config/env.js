import dotenv from "dotenv";

dotenv.config();

const env = {
  nodeEnv: process.env.NODE_ENV ?? "development",
  port: Number(process.env.PORT ?? 3000),
  appName: process.env.APP_NAME ?? "BODALINK API",
};

export default Object.freeze(env);