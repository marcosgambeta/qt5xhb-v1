%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBoundaryFinder()
$internalConstructor=|new1|

$prototype=QTextBoundaryFinder(const QTextBoundaryFinder &other)
$internalConstructor=|new2|const QTextBoundaryFinder &

$prototype=QTextBoundaryFinder(BoundaryType type, const QString &string)
$internalConstructor=|new3|QTextBoundaryFinder::BoundaryType,const QString &

$prototype=QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
%% TODO: $internalConstructor=|new4|QTextBoundaryFinder::BoundaryType,const QChar *,int,unsigned char *=0,int=0

//[1]QTextBoundaryFinder()
//[2]QTextBoundaryFinder(const QTextBoundaryFinder &other)
//[3]QTextBoundaryFinder(BoundaryType type, const QString &string)
//[4]QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)

HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextBoundaryFinder_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTBOUNDARYFINDER(1) )
  {
    QTextBoundaryFinder_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QTextBoundaryFinder_new3();
  }
%%  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
%%  {
%%    QTextBoundaryFinder_new4();
%%  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=BoundaryType type() const
$method=|QTextBoundaryFinder::BoundaryType|type|

$prototype=QString string() const
$method=|QString|string|

$prototype=void toStart()
$method=|void|toStart|

$prototype=void toEnd()
$method=|void|toEnd|

$prototype=int position() const
$method=|int|position|

$prototype=void setPosition(int position)
$method=|void|setPosition|int

$prototype=int toNextBoundary()
$method=|int|toNextBoundary|

$prototype=int toPreviousBoundary()
$method=|int|toPreviousBoundary|

$prototype=bool isAtBoundary() const
$method=|bool|isAtBoundary|

$prototype=BoundaryReasons boundaryReasons() const
$method=|QTextBoundaryFinder::BoundaryReasons|boundaryReasons|

$extraMethods

#pragma ENDDUMP
