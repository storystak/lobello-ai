# LoBello AI

Everything the LoBello team needs in Claude, in one install: the **Vault** connector plus the skills that use it.

The Vault holds LoBello's own brand and conventions, and a separate, sealed set of content for each client on the roster. Once it's connected, Claude works from real brand voice, verified numbers, and approved reviews instead of guessing — for whichever client you're working on.

> This is for the **LoBello team**. Clients don't connect to it.

---

## Setup — about two minutes, once

**1. Add it**

In Claude, go to **Customize → Plugins → Add → Add from a repository**, enter `storystak/lobello-ai`, and hit **Sync**. Then open **Personal → lobello-ai** and click **+** on *LoBello AI*.

**2. Connect the Vault**

On the plugin's page, open the **Connectors** tab and click **Install** next to **LoBello Vault**. Sign in with your **lobellomarketing.com** Google account — a personal account will be refused.

Two more are listed, both optional:

- **Asana** — connect it and Claude can see your projects and tasks, so you can ask things like "what's due for [client] this week?" alongside the Vault work.
- **Composio** — for pulling in data sources like analytics.

Neither is needed to get started. The Vault is the one that matters; add the others when you want them.

**3. Set the Vault to "always allow"**

The step everyone misses, and the one that matters. If the Vault's tools are left on "needs approval", every lookup quietly waits for a click you never see, and Claude answers from memory instead. It looks like it's working. It isn't.

**Check it for each person on the team** — the setting is per-person.

### Is it actually working?

Ask Claude:

> What clients does the Vault cover?

You should get the roster back. If the answer is vague or generic, go back to step 3.

---

## The one rule that matters: always name the client

The Vault serves several clients from one connector, and their content is kept strictly separate. **Every request needs to say who it's for.**

> ✅ "Write three ad headlines for **[client name]**, in their brand voice"
> ❌ "Write three ad headlines in their brand voice"

Content never crosses between clients — one client's stats, voice, or reviews will never end up in another's work. But Claude can only guarantee that if it knows which client you mean. If you don't say, it will ask.

Start any session you're unsure about with:

> What clients does the Vault cover?

---

## What you can do now

| Ask for | What happens |
|---|---|
| "What clients does the Vault cover?" | The roster — start here |
| "What's in the Vault for [client]?" | Everything available for that client |
| "Write an email for [client], in their voice" | Pulls their real voice guide, not a guess |
| "Check this before I send it — it's for [client]" | Verifies every number and quote against their content |
| "The Vault has the wrong price for [client]" | Files a correction for a human to approve |

Type `/` in any conversation to see the skills directly — `/copy-check`, `/vault-onboarding`, and the rest.

**New here?** Ask Claude to run `/vault-onboarding`. It walks through what the Vault holds and which questions it answers well.

---

## Good habits

**Name the client first, every time.** It's the whole safety model.

**Ask it to check.** "Is this right?" is the highest-value thing you can type.

**Trust numbers that come with a source.** A figure that names the file and date it came from is canonical. One that arrives bare is a guess — ask where it came from.

**Say when something's wrong.** A stale stat keeps producing wrong work until someone reports it. "That number changed" is enough.

**Don't paste in what the Vault already has.** Ask for it. Pasted content goes stale the moment the Vault updates.

---

## If something looks broken

**Vague answers that ignore the Vault** — almost always the "always allow" setting in step 3.

**"Not authorized" or a sign-in loop** — wrong account. Reconnect with your lobellomarketing.com email.

**A client you expect is missing from the roster** — some scopes are restricted to specific people. Send us a note if you think you should have access.

**Asked for an "OAuth Client ID"** — don't fill it in. That's a problem on our end.

---

## Updates

Leave **Sync automatically** on and new skills arrive by themselves. Nothing to reinstall.

---

Built and maintained by [Storystak](https://storystak.com). Skills come from [storystak-skills](https://github.com/storystak/storystak-skills) and are shared across every client — this repo adds the LoBello connector on top.
