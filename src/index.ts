
import { Hono } from "hono";
import { db } from "./db";
import { usersTable } from "./db/schema";

const app = new Hono();

app.get("/", (c) => {
  return c.text("Hello Hono!");
});

app.post("/createinfo", async (c) => {
  try {
    const body = await c.req.json();

    console.log("Received body:", body);

   const [info] = await db
  .insert(usersTable)
  .values(body)
  .returning();

console.log("DATABASE INSERT RESULT:", info);

return c.json({
  success: true,
  message: "Info created successfully",
  data: info,
}, 201);

  } catch (error) {
    console.error("DATABASE ERROR:", error);

    return c.json({
      success: false,
      error: String(error),
    }, 500);
  }
});

export default app;
