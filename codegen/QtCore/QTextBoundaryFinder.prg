$header

#include "hbclass.ch"

CLASS QTextBoundaryFinder

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD type
   METHOD string
   METHOD toStart
   METHOD toEnd
   METHOD position
   METHOD setPosition
   METHOD toNextBoundary
   METHOD toPreviousBoundary
   METHOD isAtBoundary
   METHOD boundaryReasons

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
QTextBoundaryFinder()
*/
$internalConstructor=|new1|

/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
$internalConstructor=|new2|const QTextBoundaryFinder &

/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
$internalConstructor=|new3|QTextBoundaryFinder::BoundaryType,const QString &

/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
$internalConstructor=|new4|QTextBoundaryFinder::BoundaryType,const QChar *,int,unsigned char *=0,int=0

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
  else if( ISBETWEEN(3,5) && ISNUM(1) && ISQCHAR(2) && ISNUM(3) && ISOPTNUM(4) && ISOPTNUM(5) )
  {
    QTextBoundaryFinder_new4();
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
BoundaryType type() const
*/
$method=|QTextBoundaryFinder::BoundaryType|type|

/*
QString string() const
*/
$method=|QString|string|

/*
void toStart()
*/
$method=|void|toStart|

/*
void toEnd()
*/
$method=|void|toEnd|

/*
int position() const
*/
$method=|int|position|

/*
void setPosition(int position)
*/
$method=|void|setPosition|int

/*
int toNextBoundary()
*/
$method=|int|toNextBoundary|

/*
int toPreviousBoundary()
*/
$method=|int|toPreviousBoundary|

/*
bool isAtBoundary() const
*/
$method=|bool|isAtBoundary|

/*
BoundaryReasons boundaryReasons() const
*/
$method=|QTextBoundaryFinder::BoundaryReasons|boundaryReasons|

$extraMethods

#pragma ENDDUMP
