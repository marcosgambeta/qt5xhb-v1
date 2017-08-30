$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QGLYPHRUN
#endif

CLASS QTextFragment

   DATA pointer
   DATA self_destruction INIT .F.

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

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
*/
$internalConstructor=|new1|const QTextDocumentPrivate *,int,int

/*
QTextFragment()
*/
$internalConstructor=|new2|

/*
QTextFragment(const QTextFragment &o)
*/
$internalConstructor=|new3|const QTextFragment &

//[1]QTextFragment(const QTextDocumentPrivate *priv, int f, int fe)
//[2]QTextFragment()
//[3]QTextFragment(const QTextFragment &o)

HB_FUNC_STATIC( QTEXTFRAGMENT_NEW )
{
  if( ISNUMPAR(3) && ISOBJECT(1) && ISNUM(2) && ISNUM(3) )
  {
    QTextFragment_new1();
  }
  else if( ISNUMPAR(0) )
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

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int position() const
*/
$method=|int|position|

/*
int length() const
*/
$method=|int|length|

/*
bool contains(int position) const
*/
$method=|bool|contains|int

/*
QTextCharFormat charFormat() const
*/
$method=|QTextCharFormat|charFormat|

/*
int charFormatIndex() const
*/
$method=|int|charFormatIndex|

/*
QString text() const
*/
$method=|QString|text|

/*
QList<QGlyphRun> glyphRuns(int from = -1, int length = -1) const
*/
$method=|QList<QGlyphRun>|glyphRuns|int=-1,int=-1

$extraMethods

#pragma ENDDUMP
