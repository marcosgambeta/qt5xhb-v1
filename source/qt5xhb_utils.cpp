/*

  Qt5xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"

#include <QObject>
#include <QStringList>

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void _qt5xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
}

/*
  verifica se o parâmetro <iPar> é do tipo <iClsId>
  retorno: true ou false
*/

bool _qt5xhb_checkclsid ( int iPar, int iClsId )
{
  if( ISOBJECT(iPar) )
  {
    return ( iClsId == hb_itemGetNI( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "CLASS_ID", 0 ) ) );
  }
  else
  {
    return false;
  }
}

/*
  verifica se o parâmetro <iPar> herda da classe <classname>
  retorno: true ou false
*/

bool _qt5xhb_inherits ( int iPar, const char * classname )
{
  if( ISOBJECT(iPar) )
  {
    // verifica se é um objeto descendente da classe QObject (CLASS_FLAGS != 0)
    if( hb_itemGetNI( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "CLASS_FLAGS", 0 ) ) != 0 )
    {
      // obtém o ponteiro do objeto Qt guardado na propriedade 'pointer' do objeto [x]Harbour
      QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "POINTER", 0 ) );
      if( obj )
      {
        // sendo um pointeiro válido, checa se descende da classe 'classname'
        return obj->inherits(classname);
      }
      else
      {
        // sendo um ponteiro nulo, retorna false
        return false;
      }
    }
    else
    {
      // não sendo um QObject, retorna false
      return false;
    }
  }
  else
  {
    // não sendo um objeto [x]Harbour, retorna false
    return false;
  }
}

/*
  converte um objeto QList<int> em uma array do [x]Harbour
*/
void _qt5xhb_convert_qlist_int_to_array ( const QList<int> list )
{
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
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
