/*

  Qt5xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "signals.h"

static Signals *s = NULL;

/*
  constructor
*/
Signals::Signals(QObject *parent) : QObject(parent)
{
}

/*
  destructor
*/
Signals::~Signals()
{
  Signals_release_codeblocks ();
}

/*
  Conecta um determinado sinal com um objeto
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Parâmetro 3: codeblock
  Retorna .t. se a conexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock )
{
  int i;
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Signals(QCoreApplication::instance());
  }
  // verifica se já está na lista
  int found = -1;
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
    {
      found = i;
      //hb_itemRelease( codeblock );
      break;
    }
  }
  bool ret = false;
  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posição livre
    i = s->list4.indexOf( false );
    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais
      s->list1 << object;
      s->list2 << signal;
      s->list3 << codeblock;
      s->list4 << true;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      s->list1[i] = object;
      s->list2[i] = signal;
      s->list3[i] = codeblock;
      s->list4[i] = true;
    }
    ret = true;
  }
  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado sinal
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Retorna .t. se a desconexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals_disconnect_signal ( QObject * object, QString signal )
{
  int i;
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Signals(QCoreApplication::instance());
  }
  bool ret = false;
  // remove sinal da lista de sinais
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( (QObject *) s->list1.at(i) == (QObject *) object )
    {
      if( ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = "";
        s->list3[i] = NULL;
        s->list4[i] = false;
        ret = true;
      }
    }
  }
  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Verifica se um determinado sinal do objeto especificado está conectado
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Retorna .t. se existe uma conexão ativa ou .f. caso não exista
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals_is_signal_connected ( QObject * object, QString signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Signals(QCoreApplication::instance());
  }
  // valor de retorno
  bool found = false;
  // verifica se já está na lista
  //int i;
  for (int i = 0; i < s->list1.size(); ++i)
  {
    if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
    {
      found = true;
      break;
    }
  }
  return found;
}

/*
  Retorna o codeblock de um determinado objeto e sinal
*/

PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s == NULL )
  {
    s = new Signals(QCoreApplication::instance());
  }
  int i;
  int found = -1;
  // localiza sinal na lista de sinais
  for (i = 0; i < s->list1.size(); ++i)
  {
    if( ( (QObject *) s->list1.at(i) == (QObject *) object ) && ( s->list2.at(i) == signal ) && ( (bool) s->list4.at(i) == true ) )
    {
      found = i;
      break;
    }
  }
  // retorna o resultado da operação
  if( found != -1 )
  {
    return (PHB_ITEM) s->list3.at(found);
  }
  else
  {
    return NULL;
  }
}

/*
  Libera todos os codeblocks relacionados com sinais
*/

void Signals_release_codeblocks ()
{
  if( s )
  {
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( (bool) s->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = "";
        s->list3[i] = NULL;
        s->list4[i] = false;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj'
  NOTA: código obsoleto (REMOVER)
*/

/*
void Signals_disconnect_all_signals (QObject * obj)
{
  if( s )
  {
    // percorre toda a lista de sinais
    for (int i = 0; i < s->list1.size(); ++i)
    {
      // elimina sinais ativos (true) ligados ao objeto (obj)
      if( ( (QObject *) s->list1.at(i) == (QObject *) obj ) && ( (bool) s->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
        s->list1[i] = NULL;
        s->list2[i] = "";
        s->list3[i] = NULL;
        s->list4[i] = false;
      }
    }
  }
}
*/

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj',
  incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
  NOTA: o sinal "destroyed(QObject*)" não é liberado, pois se fosse não seria executado
  na destruição do objeto. Este sinal é liberado automaticamente após sua execução, pois
  a destruição de um objeto ocorre apenas uma vez.
*/

void Signals_disconnect_all_signals (QObject * obj, bool children)
{
  if( s )
  {
    if( !children )
    {
      // percorre toda a lista de sinais
      for (int i = 0; i < s->list1.size(); ++i)
      {
        // elimina sinais ativos (true) ligados ao objeto (obj)
        if( ( (QObject *) s->list1.at(i) == (QObject *) obj ) &&
            ( s->list2.at(i) != "destroyed(QObject*)" ) &&
            ( (bool) s->list4.at(i) == true ) )
        {
          hb_itemRelease( (PHB_ITEM) s->list3.at(i) );
          s->list1[i] = NULL;
          s->list2[i] = "";
          s->list3[i] = NULL;
          s->list4[i] = false;
        }
      }
    }
    else
    {
      // obtém a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();
      // adiciona o pai na lista
      list << obj;
      // percorre toda a lista de objetos
      for (int i = 0; i < list.size(); ++i)
      {
        // percorre toda a lista de sinais
        for (int ii = 0; ii < s->list1.size(); ++ii)
        {
          // elimina sinais ativos (true) ligados ao objeto list.at(i)
          if( ( (QObject *) s->list1.at(ii) == (QObject *) list.at(i) ) &&
              ( s->list2.at(ii) != "destroyed(QObject*)" ) &&
              ( (bool) s->list4.at(ii) == true ) )
          {
            hb_itemRelease( (PHB_ITEM) s->list3.at(ii) );
            s->list1[ii] = NULL;
            s->list2[ii] = "";
            s->list3[ii] = NULL;
            s->list4[ii] = false;
          }
        }
      }
    }
  }
}

/*
  conecta/desconecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)
*/
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot )
{
  bool ret = false;

  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object,
                               object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                               s,
                               s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                             );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
        }
        else
        {
          hb_itemRelease( codeblock );
        }
      }
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    ret = object->disconnect( object,
                              object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                              s,
                              s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                            );
    if( ret )
    {
      Signals_disconnect_signal( object, signal ); // se desconectado, remove
    }
  }
  return ret;
}

/*
  Retorna o tamanho da lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE )
{
  if( s )
  {
    hb_retni( s->list1.size() );
  }
  else
  {
    hb_retni( 0 );
  }
}

/*
  Retorna o número de sinais ativos na lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE_ACTIVE )
{
  if( s )
  {
    // inicializa contador
    int count = 0;
    // percorre toda a lista de sinais
    for (int i = 0; i < s->list1.size(); ++i)
    {
      if( s->list4.at(i) )
      {
        ++count;
      }
    }
    hb_retni( count );
  }
  else
  {
    hb_retni( 0 );
  }
}
