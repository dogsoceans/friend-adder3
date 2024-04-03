  ::  /app/friend-adder3
::::
::
/-  *friend-adder3, *pals
/+  dbug,
    server,
    rudder,
    default-agent,
    *friend-adder3,
    verb
/~  pages  (page:rudder friend-adder3 action)  /app/rud

|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  friend-adder3
+$  card  card:agent:gall
--
%+  verb  &
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
=<
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
    aux      ~(. +> bowl)
++  on-init
  ^-  [(list card) _this]
  ~&  >  "%friend-adder3 initialized successfully."
  :-  :~  [%pass /eyre/connect %arvo %e %connect [~ /[dap.bowl]] dap.bowl]
          [%pass /leeches %agent [our.bowl %pals] %watch /leeches]
      ==
  this
++  on-save   !>(state)
++  on-load
  |=  old=vase
  ^-  [(list card) _this]
  :-  ^-  (list card)
      ~
  %=  this
    state  !<(state-0 old)
  ==
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?>  =(%handle-http-request mark)
  =;  out=(quip card friend-adder3)
    [-.out this(state +.out)]
      %.  
        :+
          bowl
          !<(order:rudder vase)
          state
      %:  (steer:rudder friend-adder3 action)
        pages
        %:  point:rudder
          /friend-adder3
          &
          ~(key by pages)
        ==
        (fours:rudder state)
        |=  act=action
          ^-  $@(@t [brief:rudder (list card) _state])
            ?-  -.act
              %switch  
            =.  switch.state  !switch.state
            ``state
          ==
      ==
::
++  on-peek
  |=  path=(pole knot)
  ^-  (unit (unit cage))
  ?+    path  (on-peek:default path)
    [%x %switch ~]  [~ ~ [%noun !>(switch)]]
  ==
++  on-watch
  |=  path=(pole knot)
  ^-  [(list card) _this]
  ?+    path  (on-watch:default path)
      [%switch ~]
    :-  :~  [%give %fact ~ %friend-adder3-update !>(`update`[%risen switch])]
    ==
    this
      [%http-response *]
    `this
  ==
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?+    sign-arvo  (on-arvo:default [wire sign-arvo])
      [%eyre %bound *]
    ?:  accepted.sign-arvo
      %-  (slog leaf+"/{(trip dap.bowl)} bound successfully!" ~)
      [~ this]
    %-  (slog leaf+"Binding /{(trip dap.bowl)} failed!" ~)
    [~ this]
  ==
++  on-leave  on-leave:default
++  on-agent  
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+    wire  ~|([dap.bowl %strange-wire wire] !!)
      [%leeches ~]
    ?+    -.sign  (on-agent:default wire sign)
        %fact
      ?+  p.cage.sign  (on-agent:default wire sign) :: is this p value appropreate for a cage
          %pals-effect 
        =/  pals-values  !<(effect q.cage.sign)
        ~&  >  pals-values
        ?+  -.pals-values  `this
            %near
          ?:  switch
            :-  :~  [%pass /addfriend %agent [our.bowl %pals] %poke %pals-command !>([%meet +.pals-values ~])]
            ==
            this
          `this
        ==
      ==
    ==
    [%addfriend ~]
    `this
  ==   

++  on-fail   on-fail:default
--
::
::  Helper Core
::
|_  =bowl:gall
+*  this     .
    default  ~(. (default-agent this %|) bowl)
++  take-action
  |=  act=action
  ^-  [(list card) _state]
  [~ state]
--
