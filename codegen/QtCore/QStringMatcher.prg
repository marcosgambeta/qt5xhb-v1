$header

#include "hbclass.ch"

CLASS QStringMatcher

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setPattern
   METHOD setCaseSensitivity
   METHOD indexIn
   METHOD pattern
   METHOD caseSensitivity

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
QStringMatcher()
*/
void QStringMatcher_new1 ()
{
  QStringMatcher * o = new QStringMatcher ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
void QStringMatcher_new2 ()
{
  int par2 = ISNIL(2)? (int) Qt::CaseSensitive : hb_parni(2);
  QStringMatcher * o = new QStringMatcher ( PQSTRING(1), (Qt::CaseSensitivity) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
*/
void QStringMatcher_new3 ()
{
  const QChar * par1 = (const QChar *) _qt5xhb_itemGetPtr(1);
  int par3 = ISNIL(3)? (int) Qt::CaseSensitive : hb_parni(3);
  QStringMatcher * o = new QStringMatcher ( par1, PINT(2), (Qt::CaseSensitivity) par3 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStringMatcher(const QStringMatcher &other)
*/
void QStringMatcher_new4 ()
{
  QStringMatcher * o = new QStringMatcher ( *PQSTRINGMATCHER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//QStringMatcher()
//QStringMatcher(const QString &pattern,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QChar *uc, int len,Qt::CaseSensitivity cs = Qt::CaseSensitive)
//QStringMatcher(const QStringMatcher &other)

HB_FUNC_STATIC( QSTRINGMATCHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStringMatcher_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_new2();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_new3();
  }
  else if( ISNUMPAR(1) && ISQSTRINGMATCHER(1) )
  {
    QStringMatcher_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setPattern(const QString &pattern)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETPATTERN )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setPattern ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
HB_FUNC_STATIC( QSTRINGMATCHER_SETCASESENSITIVITY )
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCaseSensitivity ( (Qt::CaseSensitivity) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int indexIn(const QString &str, int from = 0) const
*/
void QStringMatcher_indexIn1 ()
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->indexIn ( PQSTRING(1), OPINT(2,0) ) );
  }
}

/*
int indexIn(const QChar *str, int length, int from = 0) const
*/
void QStringMatcher_indexIn2 ()
{
  QStringMatcher * obj = (QStringMatcher *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QChar * par1 = (const QChar *) _qt5xhb_itemGetPtr(1);
    RINT( obj->indexIn ( par1, PINT(2), PINT(3) ) );
  }
}

//[1]int indexIn(const QString &str, int from = 0) const
//[2]int indexIn(const QChar *str, int length, int from = 0) const

HB_FUNC_STATIC( QSTRINGMATCHER_INDEXIN )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QStringMatcher_indexIn1();
  }
  else if( ISBETWEEN(2,3) && ISQCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    QStringMatcher_indexIn2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString pattern() const
*/
$method=|QString|pattern|

/*
Qt::CaseSensitivity caseSensitivity() const
*/
$method=|Qt::CaseSensitivity|caseSensitivity|

$extraMethods

#pragma ENDDUMP
