/-  *friend-adder3
/+  rudder, server
!:
^-  (page:rudder friend-adder3 action)
|_  [=bowl:gall =order:rudder =friend-adder3]
++  build
  |=  $:  args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"my enemies"
        ;style:"form \{ display: inline-block; }"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
      ==
      ;body
        ;+  ?~  msg  :/""
            ?:  gud.u.msg
              ;div#status.green:"{(trip txt.u.msg)}"
            ;div#status.red:"{(trip txt.u.msg)}"

      ;p:"{(trip ?:(=(switch.friend-adder3 &) 'ON adding incoming friends' 'OFF not adding friends 4 U :('))}"
        ;form(method "post")
          ;input(type "submit", name "switch", value "button");
        ==
      ==
    ==
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  (~(has by args) 'switch')
    [%switch ~]
  ~
::
++  final
  |=  [success=? =brief:rudder]
  ^-  reply:rudder
  ?.  success  (build ~ `[| `@t`brief])
  [%next 'friend-adder3' brief]
--
