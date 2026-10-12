# Enterprise IT Infrastructure & Data Flow Architecture

Below is the high-level architecture diagram illustrating user authentication, corporate VPN gateway routing, and internal server access.

```mermaid
graph TD
    Client[Remote Worker / iPad / Laptop] -->|1. HTTPS / MFA Auth| Entra[Microsoft Entra ID / Identity]
    Client -->|2. Encrypted Tunnel| VPN[Enterprise VPN Gateway]

    subgraph Corporate Secure Enclave
        VPN -->|3. Route Internal Traffic| DC[Domain Controller]
        DC -->|4. Validate RBAC & Policy| HRIS[Internal HRIS / Core Apps]
    end

    style Client fill:#f9f,stroke:#333,stroke-width:2px
    style Entra fill:#bbf,stroke:#333,stroke-width:2px
    style VPN fill:#bfb,stroke:#333,stroke-width:2px
    style DC fill:#ff9,stroke:#333,stroke-width:2px
