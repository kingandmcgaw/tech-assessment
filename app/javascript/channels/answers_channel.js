import consumer from "channels/consumer"

consumer.subscriptions.create("AnswersChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log('Received data', data)
    this.appendLine(data);
  },

  appendLine(data) {
    const html = this.createLine(data)
    const element = document.querySelector("[data-channel='answers']")
    element.insertAdjacentHTML("beforeend", html)
  },

  createLine(data) {
    return `
    <article data-user-id=${data["user_id"]}>
      <h3>Answer by ${data["name"]}</h3>
      <p>${data["text"]}</p>
    </article>
    `
  }
});
