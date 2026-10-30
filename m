Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793391941;
	b=VUMAahhDj52HtreKdEYOQKj9boqvWDe8QQr8UyeMv2hPuO8h7K/CN/XDtCq1DrimyWMr
	 EnYbYiJVg/rQXJcogiULLidC0LxR/ueHN1Bf3aVY4W0KOJC99GpMU0rW6t1MY+Tye39Iy
	 KXQkNSy6J0fqPdMNjEdjgQoYd1Uoooc2VeyiU8EIknUf1dr3I8oG7JyDDDA2JinPDcPmO
	 TwovbBg1ld0eDxagl8xgsReA+2MB17OL0Kxxypqqy8xuktcoDJmjnqP+frFrm5zpSpPIf
	 ZnXZ+ikGPRLiBKbZ1CTayZ0vfkolICGXUVXnPZsNy3uCjBtdDreX/lBeCaYHGxjQCNQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793391941;
	h=Received:Delivered-To:Received:DKIM-Signature:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=/QqfjfdI87eOxTpu80I/Wm9XwVPwJlG3jDPD/v5UXN4=;
	b=UMNl7r34YdFUy5qO57KcpkO2evpZwA1GhlKbtoRpGakbvNDO60M0SHNTue7FAPH/ikzO
	 ViIEfOq1snWnzuXIWNSbvYKWnT8JQ7f2FmT83V9+W88H0a+a6ylOF53WVgeYtPpjdd6pm
	 NV+YjtFoKvfRlEWjieSZHg4mUxkRmZTB4RQXF5JMeSP7nAYuNni8LkIOjUFrJLlioXOGz
	 4Uz6/sg7lpR5yjovfPVG38r2oHAzIWQczI5qtTQTzNb0Q28ZD+4jYTFxrM6PqKj6SuTt0
	 qELRwKCtyxZ1ul7feSrB8AUjXKJD4XgekkEkHEOzeIxOGLD8tL4km8AblXDPLSAOL6A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cO9mSYnQ;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04155606A31C
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 20:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cO9mSYnQ
Received: by smtp.kernel.org (Postfix)
	id 958911F00A1C; Fri, 30 Oct 2026 20:25:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3490D1F00A02;
	Fri, 30 Oct 2026 20:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793391940;
	bh=/QqfjfdI87eOxTpu80I/Wm9XwVPwJlG3jDPD/v5UXN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cO9mSYnQPGZIcdKqIR2tqCtz72aPvQZ2tHj2lsxl1f6UGgfedbS4Gkj9k0uK5/Ias
	 cfD0h4rQgUj9k+ny/W1dvHQDnN6M8v1ydie0IAHRdlikeVwfAw71PEPq1S+mRKwDNA
	 1svu7sMjQ/7qzrjtzhvPNmag0+yJsnpsiQADyF3f+UMzo7ie/EkH2kzqUeQppsJZ2r
	 fc5BOzZkuHiWbrdnRqDdiKD4G11WPKaiPifo0hmySyZoBMUIFc3Gm89GouXUlLueyg
	 u2JhBesYMs+wzm9ocH7qmuk2aWBDBgFTERZka+lxZoJg5bfkw59RvxRsRv4hznXHSW
	 K0EERIn6++9Vw==
Date: Fri, 30 Oct 2026 16:25:38 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: keys@kernel.org
Subject: Re: Fwd: Your kernel.org PGP key has expired
Message-ID: <20261030-artificial-weasel-of-leadership-2befa7@meerkat>
References: <20261028-augmented-messy-prawn-9c4aad@vache>
 <CANLsYkz0+q+erQrH3Rumst0+E5L2ZS8ooe-VRfdYZed1aZ=Q-w@mail.gmail.com>
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
In-Reply-To: <CANLsYkz0+q+erQrH3Rumst0+E5L2ZS8ooe-VRfdYZed1aZ=Q-w@mail.gmail.com>

On Fri, Oct 30, 2026 at 01:40:49PM -0600, Mathieu Poirier wrote:
> Please find my updated PGP key attached.

Narrator's voice: it wasn't actually attached.

-K
