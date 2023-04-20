import Control.Concurrent
import Text.Printf


main = do
    pepise <- newMVar 2000
    poloN <- newMVar 2000
    quate <- newMVar 2000
    disponivel <- newMVar True
    cp <- newMVar 0
    cpn <- newMVar 0
    q <- newMVar 0
    
    forkIO $ reabastecer "Pepise-Cola" pepise disponivel
    forkIO $ reabastecer "Guarana Polo" poloN disponivel
    forkIO $ reabastecer "Guarana Quate" quate disponivel
    forkIO $ consumidor "Pepisi-Cola" pepise disponivel cp
    forkIO $ consumidor "Guarana Polo Norte" poloN disponivel cpn
    forkIO $ consumidor "Guarana Quate" quate disponivel q
    

reabastecer :: String -> MVar Int -> MVar Bool -> IO ()
reabastecer nome refri available = loop
    where 
        loop = do
            
            p <- takeMVar refri
            if (p < 1000) then
                do
                    uso <- takeMVar available
                    printf "O refrigerante %s foi reabastecido com 1000 ml, e agora possui %d ml\n" nome (p+1000)
                    putMVar refri (p+1000)
                    threadDelay(1500*1000)
                    putMVar available uso
                    loop
            else do
              putMVar refri p
              loop
                    
            

consumidor :: String -> MVar Int -> MVar Bool -> MVar Int -> IO ()
consumidor nome refri available cliente = loop
    where
        loop = do
            p <- takeMVar refri
            if (p>0) then  
              do 
                uso <- takeMVar available
                c <- takeMVar cliente
                printf "O cliente %d do refrigerante %s esta enchendo seu copo\n" (c+1) nome
                putMVar refri (p-300)
                putMVar cliente (c+1)
                threadDelay (1000 * 1000)
                putMVar available uso
                loop
            else do
              printf "Sem %s!\n" nome
              putMVar refri p
              threadDelay (1000 * 1000)