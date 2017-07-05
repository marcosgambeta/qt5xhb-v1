$header

#include "hbclass.ch"

CLASS QRegExp

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD cap
   METHOD captureCount
   METHOD capturedTexts
   METHOD caseSensitivity
   METHOD errorString
   METHOD exactMatch
   METHOD indexIn
   METHOD isEmpty
   METHOD isMinimal
   METHOD isValid
   METHOD lastIndexIn
   METHOD matchedLength
   METHOD pattern
   METHOD patternSyntax
   METHOD pos
   METHOD setCaseSensitivity
   METHOD setMinimal
   METHOD setPattern
   METHOD setPatternSyntax
   METHOD escape

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

#include <QStringList>

/*
QRegExp ()
*/
void QRegExp_new1 ()
{
  QRegExp * o = new QRegExp ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
*/
void QRegExp_new2 ()
{
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::RegExp : hb_parni(3);
  QRegExp * o = new QRegExp ( PQSTRING(1), (Qt::CaseSensitivity) par2, (QRegExp::PatternSyntax) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QRegExp ( const QRegExp & rx )
*/
void QRegExp_new3 ()
{
  QRegExp * o = new QRegExp ( *PQREGEXP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QRegExp ()
//[2]QRegExp ( const QString & pattern, Qt::CaseSensitivity cs = Qt::CaseSensitive, PatternSyntax syntax = RegExp )
//[3]QRegExp ( const QRegExp & rx )

HB_FUNC_STATIC( QREGEXP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegExp_new1();
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
  {
    QRegExp_new2();
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    QRegExp_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString cap ( int nth = 0 ) const
*/
$method=|QString|cap|int=0

/*
int captureCount () const
*/
$method=|int|captureCount|

/*
QStringList capturedTexts () const
*/
$method=|QStringList|capturedTexts|

/*
Qt::CaseSensitivity caseSensitivity () const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
bool exactMatch ( const QString & str ) const
*/
$method=|bool|exactMatch|const QString &

/*
int indexIn ( const QString & str, int offset = 0, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_INDEXIN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
      RINT( obj->indexIn ( PQSTRING(1), OPINT(2,0), (QRegExp::CaretMode) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isMinimal () const
*/
$method=|bool|isMinimal|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
int lastIndexIn ( const QString & str, int offset = -1, CaretMode caretMode = CaretAtZero ) const
*/
HB_FUNC_STATIC( QREGEXP_LASTINDEXIN )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && ISOPTNUM(3) )
    {
      int par3 = ISNIL(3)? (int) QRegExp::CaretAtZero : hb_parni(3);
      RINT( obj->lastIndexIn ( PQSTRING(1), OPINT(2,-1), (QRegExp::CaretMode) par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int matchedLength () const
*/
$method=|int|matchedLength|

/*
QString pattern () const
*/
$method=|QString|pattern|

/*
PatternSyntax patternSyntax () const
*/
HB_FUNC_STATIC( QREGEXP_PATTERNSYNTAX )
{
  QRegExp * obj = (QRegExp *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->patternSyntax () );
  }
}

/*
int pos ( int nth = 0 ) const
*/
$method=|int|pos|int=0

/*
void setCaseSensitivity ( Qt::CaseSensitivity cs )
*/
$method=|void|setCaseSensitivity|Qt::CaseSensitivity

/*
void setMinimal ( bool minimal )
*/
$method=|void|setMinimal|bool

/*
void setPattern ( const QString & pattern )
*/
$method=|void|setPattern|const QString &

/*
void setPatternSyntax ( PatternSyntax syntax )
*/
$method=|void|setPatternSyntax|QRegExp::PatternSyntax

/*
static QString escape ( const QString & str )
*/
$staticMethod=|QString|escape|const QString &

$extraMethods

#pragma ENDDUMP
