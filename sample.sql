select
    case when no=0 then 1 else 0 end
    , no
from
    users t
    join target t1 on t.no=t1.no
where
    (
            (no>0 and no<10)
            or no>11
        )
    and updated_at>'2020-03-01'
    and (
        premium=1
        or manager=1
    )
;
