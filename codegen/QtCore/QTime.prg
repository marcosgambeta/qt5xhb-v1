%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new
   METHOD delete
   METHOD addMSecs
   METHOD addSecs
   METHOD elapsed
   METHOD hour
   METHOD isNull
   METHOD isValid
   METHOD minute
   METHOD msec
   METHOD msecsTo
   METHOD restart
   METHOD second
   METHOD secsTo
   METHOD setHMS
   METHOD start
   METHOD toString
   METHOD currentTime
   METHOD fromString

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTime()
$internalConstructor=|new1|

$prototype=QTime(int h, int m, int s = 0, int ms = 0)
$internalConstructor=|new2|int,int,int=0,int=0

//[1]QTime()
//[2]QTime(int h, int m, int s = 0, int ms = 0)

HB_FUNC_STATIC( QTIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTime_new1();
  }
  else if( ISBETWEEN(2,4) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) )
  {
    QTime_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QTime addMSecs(int ms) const
$method=|QTime|addMSecs|int

$prototype=QTime addSecs(int s) const
$method=|QTime|addSecs|int

$prototype=int elapsed() const
$method=|int|elapsed|

$prototype=int hour() const
$method=|int|hour|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isValid() const
$internalMethod=|bool|isValid,isValid1|

$prototype=static bool isValid(int h, int m, int s, int ms = 0)
$internalStaticMethod=|bool|isValid,isValid2|int,int,int,int=0

//[1]bool isValid() const
//[2]bool isValid(int h, int m, int s, int ms = 0)

HB_FUNC_STATIC( QTIME_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    QTime_isValid1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QTime_isValid2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int minute() const
$method=|int|minute|

$prototype=int msec() const
$method=|int|msec|

$prototype=int msecsTo(const QTime & t) const
$method=|int|msecsTo|const QTime &

$prototype=int restart()
$method=|int|restart|

$prototype=int second() const
$method=|int|second|

$prototype=int secsTo(const QTime & t) const
$method=|int|secsTo|const QTime &

$prototype=bool setHMS(int h, int m, int s, int ms = 0)
$method=|bool|setHMS|int,int,int,int=0

$prototype=void start()
$method=|void|start|

$prototype=QString toString(const QString & format) const
$internalMethod=|QString|toString,toString1|const QString &

$prototype=QString toString(Qt::DateFormat format = Qt::TextDate) const
$internalMethod=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

//[1]QString toString(const QString & format) const
//[2]QString toString(Qt::DateFormat format = Qt::TextDate) const

HB_FUNC_STATIC( QTIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTime_toString1();
  }
  else if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QTime_toString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QTime currentTime()
$staticMethod=|QTime|currentTime|

$prototype=static QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
$internalStaticMethod=|QTime|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

$prototype=static QTime fromString(const QString & string, const QString & format)
$internalStaticMethod=|QTime|fromString,fromString2|const QString &,const QString &

//[1]QTime fromString(const QString & string, Qt::DateFormat format = Qt::TextDate)
//[2]QTime fromString(const QString & string, const QString & format)

HB_FUNC_STATIC( QTIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QTime_fromString1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QTime_fromString2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
