return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function ()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()


      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc =  "Toggle Breakpoint"})
      vim.keymap.set('n', '<F5>', dap.continue, {})
      vim.keymap.set('n', '<F8>', dap.step_over, {})
      vim.keymap.set('n', '<F7>', dap.step_into,{})
      vim.keymap.set('n', '<S-F8>', dap.step_out, {})
    end
  },
}
