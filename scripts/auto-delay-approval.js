// Auto-approval script with 5-second delay
const readline = require('readline');

class AutoApprovalTimer {
    constructor() {
        this.rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });
    }

    async waitForApproval(action, timeout = 5000) {
        return new Promise((resolve) => {
            console.log(`\n⏰ Auto-approval timer: ${action}`);
            console.log(`⏳ Waiting ${timeout/1000} seconds... (Press Ctrl+C to cancel)`);
            
            let countdown = timeout / 1000;
            const timer = setInterval(() => {
                process.stdout.write(`\r⏱️  ${countdown} seconds remaining...`);
                countdown--;
                
                if (countdown < 0) {
                    clearInterval(timer);
                    console.log(`\n✅ Auto-approving: ${action}`);
                    resolve(true);
                }
            }, 1000);

            // Listen for user input to cancel
            this.rl.on('line', (input) => {
                if (input.trim().toLowerCase() === 'cancel' || input.trim() === 'c') {
                    clearInterval(timer);
                    console.log(`\n❌ Cancelled: ${action}`);
                    resolve(false);
                }
            });

            // Listen for Ctrl+C
            process.on('SIGINT', () => {
                clearInterval(timer);
                console.log(`\n❌ Cancelled by user: ${action}`);
                process.exit(0);
            });
        });
    }

    close() {
        this.rl.close();
    }
}

module.exports = AutoApprovalTimer;