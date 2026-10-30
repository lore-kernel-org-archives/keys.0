Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793377819;
	b=gKjKsN4sGz5lmUwaSZD4mpb4SSoHAs/Br/80LlcaPaEQdNgqtVp/VruibDmE7EPCdxSd
	 UEOCQzJO7OJ5bSlySc05hPxqiiYPUd2Brqru3gX8pMYzG9kqblEHhcwnadWUGO4Sz5wJE
	 leWSpTwHs9itEbCRV7ZjxNz7wEs6rX+uOcFLqfIyh4kiR2uj8A8sr0odqTSQ8L8e0ddSl
	 PwF3IcxLddva3begTn0fOIiG1lv7a3f8IMo0E3kFJ3GrLeNAUAdu/35Kd7QkGZTQPJrq7
	 DgRrVsG3vaUAHnyedt3P5C9Ixqui5E+XI06J8MTDvc4M7H19p6jIw9RJJtQMlJHf0Jg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793377819;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=X4//xtp8HHVxDFvmxkEdR2D6sgl0KUqlsfgU9issCNg=;
	b=dVsa61EqVPU6xi6SZsr65cpz2R2cr8HMiUsD0QvoTcTPnAmfZ9+Ba7U5sTZBpgNjdYSP
	 H+Z6tdOpPTisiTvpf5ERGUG5tSSLpdzjREp71faYJ97ErvMlR6cy5r1RWscF4llZeBaTu
	 CKgCt+Ow3aJ469RGf6cJD/aBYENqHrqqA9trVU8r5To90ZnNEm/FoLbvXHPrDNhLP8KCF
	 zX5iQQa+pzd+Ahs+L/QS/Y3g7jvd/13QsGbl12AvF4aZVeBiIHJOl7ZpXxXPMFWSYBuXo
	 NipjgkWkvPsoNv1rH0ENWqI2nehJSM5HF0SR4Rk45igGWkx58m8+hEKbJR1sRdiAqIg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=a50I0rRe;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4E7606A320
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 16:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=a50I0rRe
Received: by smtp.kernel.org (Postfix)
	id C226A1F0093A; Fri, 30 Oct 2026 16:30:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 561C71F000C1;
	Fri, 30 Oct 2026 16:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793377818;
	bh=X4//xtp8HHVxDFvmxkEdR2D6sgl0KUqlsfgU9issCNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a50I0rReoJLliN+wlOPzPE3vlWkCMSfrqFCry75DsUr4gVfQbG4TTylcJbp067b02
	 hRRlKSi05yn76ALJSRVNsxVB5wCubsCy2P0b/KFBhN+ICRqvEI9lj5ZChdBxnPkMab
	 0qWAklgZSuVJ6yTdgg/dliv2wl3GZ4fHhFSL6o2jZpZL6xPi+2ZcHPvSp+y7RDnP3w
	 upiA5lys2BUxNc9YbR4tTq6qajDqbJjGcrvJfiLqv/ZKuEHHEI6ZCFZqkBKbJxfNWZ
	 kjU3EWDURsiRENPbN9u2UkNaeS0ddKcM3+OPpbeNtkMyqR2gSyM4HsA+TkVjsWXohz
	 +lj2W16Ki3m0w==
Date: Fri, 30 Oct 2026 16:30:16 +0000
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Alan Maguire <almagui@kernel.org>
Cc: keys@kernel.org
Subject: Re: updating key to more stable kernel.org address, revoking
 alan.maguire@oracle.com
Message-ID: <20261030-massive-mindful-kiwi-f3ba1f@vache>
References: <bac10e4b-f1c0-4148-bdb6-a2c0c6b21d90@kernel.org>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bac10e4b-f1c0-4148-bdb6-a2c0c6b21d90@kernel.org>

On Fri, Oct 30, 2026 at 11:33 AM, Alan Maguire wrote:
> already uploaded to openpgp, sending here too as per process. Thanks!

Hi, Alan:

Thanks! I've added your earlier update with the new expiration date, but
not this one:

Your key's only trust path into the kernel.org keyring is Konrad Wilk's
signature on your alan.maguire@oracle.com user ID. Revoking that user ID
also drops his signature, and the almagui@kernel.org UID has no signatures at
all yet, so your key would fall out of the keyring as a result.

Please get almagui@kernel.org signed by at least two people with active
kernel.org accounts (Konrad could be one of them), then send the updated key
again and I will update it at that time.

Thanks,
-K
