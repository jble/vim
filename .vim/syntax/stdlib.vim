" Stdlib Highlighting

syn keyword stdlibFunc pthread_testcancel pthread_sigmask pthread_setspecific pthread_setschedparam pthread_setcanceltype pthread_setcancelstate pthread_self pthread_once pthread_mutex_unlock pthread_mutex_trylock pthread_mutex_lock pthread_mutex_init pthread_mutex_destroy pthread_mutexattr_setpshared pthread_mutexattr_setprotocol pthread_mutexattr_setprioceiling pthread_mutexattr_init pthread_mutexattr_getpshared pthread_mutexattr_getprotocol pthread_mutexattr_getprioceiling pthread_mutexattr_destroy pthread_kill pthread_key_delete pthread_key_create pthread_join pthread_getspecific pthread_getschedparam pthread_exit pthread_equal pthread_detach pthread_create pthread_cond_wait pthread_cond_timedwait pthread_cond_signal pthread_cond_init pthread_cond_destroy pthread_cond_broadcast pthread_condattr_setpshared pthread_condattr_init pthread_condattr_getpshared pthread_condattr_destroy pthread_cleanup_push pthread_cleanup_pop pthread_cancel pthread_attr_setstacksize pthread_attr_setstackaddr pthread_attr_setscope pthread_attr_setschedpolicy pthread_attr_setschedparam pthread_attr_setinheritsched pthread_attr_setdetachstate pthread_attr_init pthread_attr_getstacksize pthread_attr_getstackaddr pthread_attr_getscope pthread_attr_getschedpolicy pthread_attr_getschedparam pthread_attr_getinheritsched pthread_attr_getdetachstate pthread_attr_destroy pthread_atfork waitpid wait timer_settime timer_gettime timer_delete timer_create sigwaitinfosigtimedwait shm_unlink shm_open sem_trywait sem_wait sem_unlink sem_post sem_open sem_getvalue sem_destroy sem_close sched_yield sched_setscheduler sched_setparam sched_rr_get_interval sched_getscheduler sched_getparam sched_get_priority_min sched_get_priority_max nanosleep munmap munlockall munlock msync mq_setattr mq_send mq_receive mq_open mq_notify mq_getattr mq_close mprotect mmap mlockall mlock lio_listio sigqueue kill fsync fdatasync clock_settime clock_gettime clock_getres aio_write aio_suspend aio_return aio_read aio_error aio_cancel write waitpid utime unlink uname umask tzset ttyname times time tcsetpgrp tcsetattr tcsendbreak tcgetpgrp tcgetattr tcflush tcflow tcdrain sysconf stat sleep sigsuspend sigsetjmp sigprocmask sigpending siglongjmp sigismember sigfillset sigemptyset sigdelset sigaddset sigaction setuid setpgid setlocale setjmp setgid rmdir rewinddir rename readdir read pipe pause pathconf opendir open mkfifo mkdir lseek longjmp link kill isatty getuid getpwuid getpwnam getppid getpid getpgrp getlogin getgroups getgrnam getgrgid getgid geteui getenv getegid getcwd fstat fpathconf fork fdopen fcntl _exit execvp execve execv execlp execle exec dup2 dup cuserid ctermid creat closedir close chown chmod chdir cfsetospeed cfsetispeed cfgetospeed cfgetispeed asctime alarm access malloc free calloc
syn keyword stringFunc memccpy memcpy memcmp memmove stpcpy stpncpy strcasecmp strcasecmp_l strcasestr strcat strchr strchrnul strcmp strcoll strcoll_l strcpy strcspn strdup strerror strerror_l strerror_r strfry strlen strncasecmp strncasecmp_l strncat strncmp strncpy strndup strnlen strpbrk strrchr strsep strsignal strspn strstr strtok strtok_r strverscmp strxfrm strxfrm_l memset strtoul
syn keyword assertFunc assert
syn keyword stdargFunc va_start va_end va_copy va_arg
syn keyword baseType int32 uint32 int64 uint64 Bool uint8 int8 uint16 int16 va_list
syn keyword stdlibMacro CLOCK_MONOTONIC CLOCK_REALTIME CLOCK_MONOTONIC_RAW CLOCK_PROCESS_CPUTIME_ID CLOCK_THREAD_CPUTIME_ID

" Default highlighting
if version >= 508
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink assertFunc Function
  HiLink stdlibFunc Function
  HiLink stdargFunc Function
  HiLink stringFunc Function
  HiLink baseType Type
  HiLink stdlibMacro Macro
  delcommand HiLink
endif

