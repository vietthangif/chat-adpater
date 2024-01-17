const axios = require("axios");

module.exports = class Bot {
  static chat(tenantId, senderId, message) {
    return axios.post(
      `${process.env.TASKBOT_URL}/tenants/${tenantId}/senders/${senderId}/messages`,
      { content: message },
      {
        headers: {
          accept: "application/json",
          "Content-Type": "application/json"
        }
      }
    );
  }
};
