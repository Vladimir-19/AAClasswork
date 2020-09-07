class Clock {
    constructor() {
        // 1. Create a Date object.
        // var currentDate = new Date()
        const currentDate = new Date();

        // 2. Store the hours, minutes, and seconds.
         this.sec = currentDate.getSeconds();
         this.min = currentDate.getMinutes();
         this.h = currentDate.getHours();

        // 3. Call printTime.
        this.printTime();

        // 4. Schedule the tick at 1 second intervals.
        setInterval(this._tick.bind(this), 1000);
    }

    printTime() {
        // Format the time in HH:MM:SS
        // Use console.log to print it.
        const xxx = [this.h, this.min, this.sec].join(":");
        console.log(xxx);
    }

    _tick() {
        // 1. Increment the time by one second.
        // 2. Call printTime.
        this._incrSec();
        this.printTime();
    };

    _incrSec() {
        this.sec += 1;
        if (this.sec === 60) {
            this.sec = 0; 
            this._incrMin();
        }
    }

    _incrMin() {
        this.min += 1;
        if (this.min === 60) {
            this.min = 0;
            this._incrHour();
        }
    }

    _incrHour() {
        this.h = (this.h + 1) % 24;
    }
}


const clock = new Clock();