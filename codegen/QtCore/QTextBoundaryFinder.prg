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
void QTextBoundaryFinder_new1 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(const QTextBoundaryFinder &other)
*/
void QTextBoundaryFinder_new2 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( *PQTEXTBOUNDARYFINDER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(BoundaryType type, const QString &string)
*/
void QTextBoundaryFinder_new3 ()
{
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), PQSTRING(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextBoundaryFinder(BoundaryType type, const QChar *chars, int length, unsigned char *buffer = 0, int bufferSize = 0)
*/
void QTextBoundaryFinder_new4 ()
{
  const QChar * par2 = (const QChar *) _qt5xhb_itemGetPtr(2);
  unsigned char * par4 = ISNIL(4)? 0 : (unsigned char *) _qt5xhb_itemGetPtr(4);
  QTextBoundaryFinder * o = new QTextBoundaryFinder ( (QTextBoundaryFinder::BoundaryType) hb_parni(1), par2, PINT(3), par4, OPINT(5,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

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
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_TYPE )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->type () );
  }
}

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
HB_FUNC_STATIC( QTEXTBOUNDARYFINDER_BOUNDARYREASONS )
{
  QTextBoundaryFinder * obj = (QTextBoundaryFinder *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->boundaryReasons () );
  }
}

$extraMethods

#pragma ENDDUMP
