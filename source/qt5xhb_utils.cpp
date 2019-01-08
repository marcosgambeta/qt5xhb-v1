/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"

#include <QObject>
#include <QStringList>
#include <QWidget>
#include <QVariant>

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );

    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );

    PHB_ITEM pDestroy = hb_itemNew( NULL );
    hb_itemPutL( pDestroy, destroy );
    hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
    hb_itemRelease( pDestroy );

    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );

    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );

    PHB_ITEM pDestroy = hb_itemNew( NULL );
    hb_itemPutL( pDestroy, destroy );
    hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
    hb_itemRelease( pDestroy );

    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  converte um objeto QList<int> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_int_to_array ( const QList<int> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint8> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_qint8_to_array ( const QList<qint8> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint16> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_qint16_to_array ( const QList<qint16> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint32> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_qint32_to_array ( const QList<qint32> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint64> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_qint64_to_array ( const QList<qint64> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint8> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_quint8_to_array ( const QList<quint8> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint16> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_quint16_to_array ( const QList<quint16> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint32> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_quint32_to_array ( const QList<quint32> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint64> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_quint64_to_array ( const QList<quint64> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qreal> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_qreal_to_array ( const QList<qreal> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<double> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_double_to_array ( const QList<double> list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QStringList (QList<QString>) em uma array do [x]Harbour
*/
void _qt5xhb_convert_qstringlist_to_array ( const QStringList list )
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) list[i].toLatin1().data() );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  obtém e retorna o valor da propriedade POINTER de um objeto [x]Harbour (tipo O)
*/
void * _qt5xhb_itemGetPtr( int numpar )
{
  return ( (void *) hb_itemGetPtr( hb_objSendMsg( hb_param( numpar, HB_IT_OBJECT ), "POINTER", 0 ) ) );
}

/*
  obtém e retorna o valor da propriedade POINTER do objeto hb_stackSelfItem()
*/
void * _qt5xhb_itemGetPtrStackSelfItem ()
{
  return ( (void *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) ) );
}

/*
  armazena o ponteiro e a flag de destruição no objeto (função
  utilizada nos métodos construtores new)
*/
void _qt5xhb_storePointerAndFlag (void * pointer, bool flag)
{
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) pointer );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, flag );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
  used in constructors
  store pointer and flag of the object
  return self object
*/
void _qt5xhb_returnNewObject (void * pointer, bool flag)
{
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) pointer );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, flag );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}

/*
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnQObjectClass ( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QObject *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnQObjectClass ( const QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QObject *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnQWidgetClass ( QWidget * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QWidget *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnQWidgetClass ( const QWidget * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;
  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QWidget *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
*/
bool _qt5xhb_isClassDerivedFrom ( const char * className1, const char * className2 )
{
// TOFIX: code for xHarbour
#ifdef __XHARBOUR__
   return false;
#else
  HB_USHORT uiClass = hb_clsFindClass( className1, NULL );
  return hb_clsIsParent( uiClass, className2 );
#endif
}

/*
*/
bool _qt5xhb_isObjectDerivedFrom ( int numpar, const QString className )
{
  PHB_ITEM pItem = hb_param( numpar, HB_IT_OBJECT );

  if( pItem )
  {
    return hb_clsIsParent( hb_objGetClass( pItem ), (const char *) className.toUpper().toLatin1().data() );
  }
  else
  {
    return false;
  }
}

/*
  converte parametro 'n' de array (Harbour) para QStrinList (Qt)
*/
QStringList _qt5xhb_convert_array_parameter_to_qstringlist ( int numpar )
{
  QStringList list;

  PHB_ITEM pArray = hb_param(numpar, HB_IT_ARRAY);

  if( pArray )
  {
    int i;
    int nLen = hb_arrayLen(pArray);
    for (i=0; i<nLen; i++)
    {
      QString temp = QLatin1String( hb_arrayGetCPtr(pArray, i+1) );
      list << temp;
    }
  }

  return list;
}

/*
*/
// QString _qt5xhb_convert_string_parameter_to_qstring ( int numpar )
// {
//   #ifdef QT5XHB_USE_LATIN1STRING
//   return QLatin1String( hb_parc(numpar) );
//   #else
//   return QString( hb_parc(numpar) );
//   #endif
// }

/*
  converte parametro 'n' de array (Harbour) para QVariantList/QList<QVariant> (Qt)
*/
QVariantList _qt5xhb_convert_array_parameter_to_qvariantlist ( int numpar )
{
  QVariantList list;

  PHB_ITEM pArray = hb_param(numpar, HB_IT_ARRAY);

  if( pArray )
  {
    int i;
    int nLen = hb_arrayLen(pArray);
    for (i=0; i<nLen; i++)
    {
      list << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( pArray, i+1 ), "POINTER", 0 ) );
    }
  }

  return list;
}

/*
  converte um objeto QVariantList/QList<QVariant> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qvariantlist_to_array ( const QVariantList list )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( "QVARIANT" );

  PHB_ITEM pArray = hb_itemArrayNew(0);

  int i;

  for(i=0; i<list.count(); i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QVariant *) new QVariant ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturnRelease(pArray);
}
