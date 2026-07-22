# Registered-Device Authentication

Pr0jectZer0 uses a companion mobile app to approve dashboard sessions without requiring a second PIN entry in the browser.

## Enrollment

1. An administrator creates a short-lived enrollment invitation on the local server.
2. Pr0jectZer0 Auth scans the invitation and displays the server identity for review.
3. The app creates or reuses its device signing identity.
4. The server registers the device's public key and returns an authoritative device identifier.
5. The app stores the server as a trusted local system.

Enrollment invitations are single-use and expire automatically.

## Dashboard Login

1. The browser requests a one-time challenge.
2. The dashboard displays a QR code containing public challenge data.
3. An enrolled phone scans the code and verifies that it belongs to the saved server.
4. The user confirms locally with biometrics or the app PIN.
5. The app signs the one-time challenge and submits the approval directly to the server.
6. The originating browser exchanges its private browser binding for a dashboard session.

## Security Properties

- **Local confirmation:** Biometrics and the app PIN are evaluated on the phone.
- **No biometric transfer:** The server never receives biometric data.
- **No PIN transfer:** The app-local PIN is not sent to the server.
- **Signed approval:** The server verifies approval with the enrolled device public key.
- **Single-use challenges:** Enrollment and login challenges cannot be replayed after consumption.
- **Browser binding:** Observing or photographing a QR code is not sufficient to claim the browser session.
- **Local data plane:** Authentication state remains part of the customer-controlled deployment.

## Recovery and Hardening

Private development retains controlled maintenance access for setup and recovery. Production hardening includes credential rotation, transport security, recovery workflows, device revocation, native key-storage evaluation, security review, and release signing.

This document describes a development milestone and does not claim formal security certification.
