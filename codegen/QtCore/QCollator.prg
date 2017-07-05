$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QCOLLATORSORTKEY
#endif

CLASS QCollator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setLocale
   METHOD locale
   METHOD caseSensitivity
   METHOD setCaseSensitivity
   METHOD setNumericMode
   METHOD numericMode
   METHOD setIgnorePunctuation
   METHOD ignorePunctuation
   METHOD sortKey

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QCollator(const QLocale &locale = QLocale())
*/
void QCollator_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QLocale par1 = ISNIL(1)? QLocale() : *(QLocale *) _qt5xhb_itemGetPtr(1);
  QCollator * o = new QCollator ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QCollator(const QCollator &)
*/
void QCollator_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * o = new QCollator ( *PQCOLLATOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

//[1]QCollator(const QLocale &locale = QLocale())
//[2]QCollator(const QCollator &)

HB_FUNC_STATIC( QCOLLATOR_NEW )
{
  if( ISBETWEEN(0,1) && (ISQLOCALE(1)||ISNIL(1)) )
  {
    QCollator_new1();
  }
  else if( ISNUMPAR(1) && ISQCOLLATOR(1) )
  {
    QCollator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
void swap(QCollator &other)
*/
HB_FUNC_STATIC( QCOLLATOR_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QCollator * obj = (QCollator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLLATOR(1) )
    {
      QCollator * par1 = (QCollator *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setLocale(const QLocale &locale)
*/
$method=5,2,0|void|setLocale|const QLocale &

/*
QLocale locale() const
*/
$method=5,2,0|QLocale|locale|

/*
Qt::CaseSensitivity caseSensitivity() const
*/
$method=5,2,0|Qt::CaseSensitivity|caseSensitivity|

/*
void setCaseSensitivity(Qt::CaseSensitivity cs)
*/
$method=5,2,0|void|setCaseSensitivity|Qt::CaseSensitivity

/*
void setNumericMode(bool on)
*/
$method=5,2,0|void|setNumericMode|bool

/*
bool numericMode() const
*/
$method=5,2,0|bool|numericMode|

/*
void setIgnorePunctuation(bool on)
*/
$method=5,2,0|void|setIgnorePunctuation|bool

/*
bool ignorePunctuation() const
*/
$methpd=5,2,0|bool|ignorePunctuation|

/*
QCollatorSortKey sortKey(const QString &string) const
*/
$method=5,2,0|QCollatorSortKey|sortKey|const QString &

$extraMethods

#pragma ENDDUMP
