$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTIONGROUP
REQUEST QGRAPHICSWIDGET
REQUEST QWIDGET
REQUEST QVARIANT
REQUEST QFONT
REQUEST QICON
REQUEST QMENU
REQUEST QKEYSEQUENCE
#endif

CLASS QAction INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionGroup
   METHOD activate
   METHOD associatedGraphicsWidgets
   METHOD associatedWidgets
   METHOD autoRepeat
   METHOD data
   METHOD font
   METHOD icon
   METHOD iconText
   METHOD isCheckable
   METHOD isChecked
   METHOD isEnabled
   METHOD isIconVisibleInMenu
   METHOD isSeparator
   METHOD isVisible
   METHOD menu
   METHOD menuRole
   METHOD parentWidget
   METHOD priority
   METHOD setActionGroup
   METHOD setAutoRepeat
   METHOD setCheckable
   METHOD setData
   METHOD setFont
   METHOD setIcon
   METHOD setIconText
   METHOD setIconVisibleInMenu
   METHOD setMenu
   METHOD setMenuRole
   METHOD setPriority
   METHOD setSeparator
   METHOD setShortcut
   METHOD setShortcutContext
   METHOD setShortcuts
   METHOD setStatusTip
   METHOD setText
   METHOD setToolTip
   METHOD setWhatsThis
   METHOD shortcut
   METHOD shortcutContext
   METHOD shortcuts
   METHOD showStatusText
   METHOD statusTip
   METHOD text
   METHOD toolTip
   METHOD whatsThis
   METHOD hover
   METHOD setChecked
   METHOD setDisabled
   METHOD setEnabled
   METHOD setVisible
   METHOD toggle
   METHOD trigger

   METHOD onChanged
   METHOD onHovered
   METHOD onToggled
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAction ( QObject * parent )
*/
void QAction_new1 ()
{
  QAction * o = new QAction ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAction ( const QString & text, QObject * parent )
*/
void QAction_new2 ()
{
  QAction * o = new QAction ( PQSTRING(1), PQOBJECT(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAction ( const QIcon & icon, const QString & text, QObject * parent )
*/
void QAction_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QAction * o = new QAction ( par1, PQSTRING(2), PQOBJECT(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QAction ( QObject * parent )
//[2]QAction ( const QString & text, QObject * parent )
//[3]QAction ( const QIcon & icon, const QString & text, QObject * parent )

HB_FUNC_STATIC( QACTION_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAction_new1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QAction_new2();
  }
  else if( ISNUMPAR(3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) )
  {
    QAction_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QActionGroup * actionGroup () const
*/
HB_FUNC_STATIC( QACTION_ACTIONGROUP )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QActionGroup * ptr = obj->actionGroup ();
    _qt5xhb_createReturnClass ( ptr, "QACTIONGROUP" );
  }
}

/*
void activate ( ActionEvent event )
*/
HB_FUNC_STATIC( QACTION_ACTIVATE )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->activate ( (QAction::ActionEvent) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QGraphicsWidget *> associatedGraphicsWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDGRAPHICSWIDGETS )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QGraphicsWidget *> list = obj->associatedGraphicsWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QGRAPHICSWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QGRAPHICSWIDGET" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QGraphicsWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QWidget *> associatedWidgets () const
*/
HB_FUNC_STATIC( QACTION_ASSOCIATEDWIDGETS )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QWidget *> list = obj->associatedWidgets ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWIDGET" );
    #else
    pDynSym = hb_dynsymFindName( "QWIDGET" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QWidget *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool autoRepeat () const
*/
$method=|bool|autoRepeat|

/*
QVariant data () const
*/
HB_FUNC_STATIC( QACTION_DATA )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->data () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QFont font () const
*/
HB_FUNC_STATIC( QACTION_FONT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QACTION_ICON )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
QString iconText () const
*/
HB_FUNC_STATIC( QACTION_ICONTEXT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->iconText () );
  }
}

/*
bool isCheckable () const
*/
$method=|bool|isCheckable|

/*
bool isChecked () const
*/
$method=|bool|isChecked|

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
bool isIconVisibleInMenu () const
*/
$method=|bool|isIconVisibleInMenu|

/*
bool isSeparator () const
*/
$method=|bool|isSeparator|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QACTION_MENU )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->menu ();
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
MenuRole menuRole () const
*/
HB_FUNC_STATIC( QACTION_MENUROLE )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->menuRole () );
  }
}

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QACTION_PARENTWIDGET )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
Priority priority () const
*/
HB_FUNC_STATIC( QACTION_PRIORITY )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->priority () );
  }
}

/*
void setActionGroup ( QActionGroup * group )
*/
HB_FUNC_STATIC( QACTION_SETACTIONGROUP )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setActionGroup ( PQACTIONGROUP(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoRepeat ( bool )
*/
$method=|void|setAutoRepeat|bool

/*
void setCheckable ( bool )
*/
$method=|void|setCheckable|bool

/*
void setData ( const QVariant & userData )
*/
$method=|void|setData|const QVariant &

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QACTION_SETICON )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconText ( const QString & text )
*/
$method=|void|setIconText|const QString &

/*
void setIconVisibleInMenu ( bool visible )
*/
$method=|void|setIconVisibleInMenu|bool

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QACTION_SETMENU )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMenu ( PQMENU(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenuRole ( MenuRole menuRole )
*/
HB_FUNC_STATIC( QACTION_SETMENUROLE )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMenuRole ( (QAction::MenuRole) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPriority ( Priority priority )
*/
HB_FUNC_STATIC( QACTION_SETPRIORITY )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPriority ( (QAction::Priority) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSeparator ( bool b )
*/
$method=|void|setSeparator|bool

/*
void setShortcut ( const QKeySequence & shortcut )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShortcut ( *PQKEYSEQUENCE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcutContext ( Qt::ShortcutContext context )
*/
HB_FUNC_STATIC( QACTION_SETSHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShortcutContext ( (Qt::ShortcutContext) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcuts ( const QList<QKeySequence> & shortcuts )
*/
void QAction_setShortcuts1 ()
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QKeySequence> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QKeySequence *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setShortcuts ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setShortcuts ( QKeySequence::StandardKey key )
*/
void QAction_setShortcuts2 ()
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setShortcuts ( (QKeySequence::StandardKey) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setShortcuts ( const QList<QKeySequence> & shortcuts )
//[2]void setShortcuts ( QKeySequence::StandardKey key )

HB_FUNC_STATIC( QACTION_SETSHORTCUTS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QAction_setShortcuts1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QAction_setShortcuts2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStatusTip ( const QString & statusTip )
*/
$method=|void|setStatusTip|const QString &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
void setToolTip ( const QString & tip )
*/
$method=|void|setToolTip|const QString &

/*
void setWhatsThis ( const QString & what )
*/
$method=|void|setWhatsThis|const QString &

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut () );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
}

/*
Qt::ShortcutContext shortcutContext () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTCONTEXT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->shortcutContext () );
  }
}

/*
QList<QKeySequence> shortcuts () const
*/
HB_FUNC_STATIC( QACTION_SHORTCUTS )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QKeySequence> list = obj->shortcuts ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QKEYSEQUENCE" );
    #else
    pDynSym = hb_dynsymFindName( "QKEYSEQUENCE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QKeySequence *) new QKeySequence ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
bool showStatusText ( QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QACTION_SHOWSTATUSTEXT )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->showStatusText ( OPQWIDGET(1,0) ) );
  }
}

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QACTION_STATUSTIP )
{
  QAction * obj = (QAction *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->statusTip () );
  }
}

/*
QString text () const
*/
$method=|QString|text|

/*
QString toolTip () const
*/
$method=|QString|toolTip|

/*
QString whatsThis () const
*/
$method=|QString|whatsThis|

/*
void hover ()
*/
$method=|void|hover|

/*
void setChecked ( bool )
*/
$method=|void|setChecked|bool

/*
void setDisabled ( bool b )
*/
$method=|void|setDisabled|bool

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|

/*
void setVisible ( bool )
*/
$method=|void|setVisible|bool

/*
void toggle ()
*/
$method=|void|toggle|

/*
void trigger ()
*/
$method=|void|trigger|

#pragma ENDDUMP
