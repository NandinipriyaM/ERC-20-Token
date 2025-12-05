# MyToken (MTK)

## 📘 Overview
MyToken is a simple ERC-20 compatible token built using Solidity on the Ethereum blockchain.  
It is designed for learning and demonstrates essential token mechanics such as transfers, approvals, allowances, and event logging.

---

## 🪙 Token Details

| Field        | Value       |
|--------------|-------------|
| Name         | MyToken     |
| Symbol       | MTK         |
| Decimals     | 18          |
| Total Supply | 1,000,000 MTK |

---

## ✨ Features
- ✅ Fully functional ERC-20 style token  
- ✅ Transfer tokens between addresses  
- ✅ Approve a spender to use your tokens  
- ✅ transferFrom support for delegated transfers  
- ✅ Emits **Transfer** and **Approval** events  
- ✅ Includes helper functions for easy info retrieval  
- ✅ Simple and beginner-friendly contract structure  

---

## 🚀 How to Deploy

1. Open **Remix IDE** → https://remix.ethereum.org  
2. Create a new file named **MyToken.sol**  
3. Paste your complete smart contract code  
4. Go to **Solidity Compiler**  
   - Select version **0.8.x**  
   - Click **Compile MyToken.sol**  
5. Go to **Deploy & Run Transactions**  
6. Select environment:  
   - **Remix VM (Prague)**  
7. Ensure **Account A** (your main account) is selected  
8. Enter constructor parameter for total supply:  1000000000000000000000000
                                       *(represents 1,000,000 tokens with 18 decimals)*  
9. Click **Deploy**  
10. Your contract will appear under **Deployed Contracts**  

---

##  How to Use the Token

### 🔍 Check Balance
    solidity
balanceOf(address)
###  **Transfer Tokens**

Send VKC tokens from your wallet to another wallet.


transfer(address to, uint256 amount)

###  Approve Spending

Allow another wallet (spender) to spend your tokens.


approve(address spender, uint256 amount)

###  Transfer On Behalf (transferFrom)

Spend tokens from someone else’s wallet after they approve you.


transferFrom(address from, address to, uint256 amount)


###  Get Token Name
name()
###  Get Token Symbol
symbol()
###  Get Decimals
decimals()
###  Get Total Supply
totalSupply()


