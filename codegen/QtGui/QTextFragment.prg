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
   METHOD isValid
   METHOD position
   METHOD length
   METHOD contains
   METHOD charFormat
   METHOD charFormatIndex
   METHOD text
   METHOD glyphRuns

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
%% TODO: implementar ?
%% $internalConstructor=|new1|const QTextDocumentPrivate *,int,int

$prototype=QTextFragment()
$internalConstructor=|new2|

$prototype=QTextFragment(const QTextFragment &o)
$internalConstructor=|new3|const QTextFragment &

//[1]QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
//[2]QTextFragment()
//[3]QTextFragment(const QTextFragment &o)

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
%%  if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
%%  {
%%    QTextFragment_new1();
%%  }
%%  else if( ISNUMPAR(0) )
  if( ISNUMPAR(0) )
  {
    QTextFragment_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTFRAGMENT(1) )
  {
    QTextFragment_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int position() const
$method=|int|position|

$prototype=int length() const
$method=|int|length|

$prototype=bool contains(int position) const
$method=|bool|contains|int

$prototype=QTextCharFormat charFormat() const
$method=|QTextCharFormat|charFormat|

$prototype=int charFormatIndex() const
$method=|int|charFormatIndex|

$prototype=QString text() const
$method=|QString|text|

$prototype=QList<QGlyphRun> glyphRuns(int from = -1, int length = -1) const
$method=|QList<QGlyphRun>|glyphRuns|int=-1,int=-1

$extraMethods

#pragma ENDDUMP
