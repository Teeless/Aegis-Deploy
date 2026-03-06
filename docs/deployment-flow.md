# Deployment Flow

Aegis-Deploy models a gradual deployment process designed to reduce production risk.

---

# Step 1 – Deploy Experimental Version

A new container image is deployed to:

Candidate A

Traffic distribution:

Production → 90%  
Candidate A → 5%  
Candidate B → 5%

---

# Step 2 – Observe Metrics

Engineers monitor:

- error rate
- latency
- container health
- service logs

via CloudWatch.

---

# Step 3 – Increase Traffic

If metrics look healthy:

Production → 50%  
Candidate A → 50%

---

# Step 4 – Promote Release

Candidate A becomes the new Production version.

---

# Step 5 – Retire Old Version

The previous production deployment can be safely removed or archived.

---

# Benefits

This deployment model:

- reduces release risk
- allows real-world testing
- enables fast rollback
