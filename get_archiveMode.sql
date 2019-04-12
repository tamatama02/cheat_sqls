select p.pname, s.program, s.machine from v$process p, v$session s where s.paddr(+) = p.addr order by 1;

