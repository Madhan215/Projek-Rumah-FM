<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     */
    protected function schedule(Schedule $schedule): void
    {
        $schedule->command('cache:clear')->everyMinute();
        $schedule->command('config:clear')->everyMinute();
        $schedule->command('view:clear')->everyMinute();
        $schedule->command('route:clear')->everyMinute();
        $schedule->command('optimize:clear')->everyMinute();
        
        // Masukkan Kode Anda Disini
        $schedule->call(function () {
            
        //Pengecekan apakah cronjob berhasil atau tidak
	//Mencatat info log 
            Log::info('Cronjob berhasil dijalankan');
        })->everyTwoMinutes();
        
        
    }

    /**
     * Register the commands for the application.
     */
    protected function commands(): void
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
