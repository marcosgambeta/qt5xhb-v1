$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
REQUEST QWIDGET
#endif

CLASS QShortcut INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis

   METHOD onActivated
   METHOD onActivatedAmbiguously

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QShortcut(QWidget * parent)
*/
void QShortcut_new1 ()
{
  QShortcut * o = new QShortcut ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
void QShortcut_new2 ()
{
  int par5 = ISNIL(5)? (int) Qt::WindowShortcut : hb_parni(5);
  QShortcut * o = new QShortcut ( *PQKEYSEQUENCE(1), PQWIDGET(2), OPCONSTCHAR(3,0), OPCONSTCHAR(4,0), (Qt::ShortcutContext) par5 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC_STATIC( QSHORTCUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QShortcut_new1();
  }
  else if( ISBETWEEN(2,5) && ISQKEYSEQUENCE(1) && ISQWIDGET(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QShortcut_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRepeat() const
*/
HB_FUNC_STATIC( QSHORTCUT_AUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->autoRepeat () );
  }
}

/*
Qt::ShortcutContext context() const
*/
HB_FUNC_STATIC( QSHORTCUT_CONTEXT )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->context () );
  }
}

/*
int id() const
*/
HB_FUNC_STATIC( QSHORTCUT_ID )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->id () );
  }
}

/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QSHORTCUT_ISENABLED )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
}

/*
QKeySequence key() const
*/
HB_FUNC_STATIC( QSHORTCUT_KEY )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->key () );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}

/*
QWidget * parentWidget() const
*/
HB_FUNC_STATIC( QSHORTCUT_PARENTWIDGET )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
void setAutoRepeat(bool on)
*/
HB_FUNC_STATIC( QSHORTCUT_SETAUTOREPEAT )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoRepeat ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContext(Qt::ShortcutContext context)
*/
HB_FUNC_STATIC( QSHORTCUT_SETCONTEXT )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setContext ( (Qt::ShortcutContext) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEnabled(bool enable)
*/
HB_FUNC_STATIC( QSHORTCUT_SETENABLED )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setKey(const QKeySequence & key)
*/
HB_FUNC_STATIC( QSHORTCUT_SETKEY )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQKEYSEQUENCE(1) )
    {
      obj->setKey ( *PQKEYSEQUENCE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWhatsThis(const QString & text)
*/
HB_FUNC_STATIC( QSHORTCUT_SETWHATSTHIS )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setWhatsThis ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString whatsThis() const
*/
HB_FUNC_STATIC( QSHORTCUT_WHATSTHIS )
{
  QShortcut * obj = (QShortcut *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->whatsThis () );
  }
}

#pragma ENDDUMP
