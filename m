Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793214807;
	b=JPAlmrG50BOof30mJxrOyyoZPC4iJUPq2seYtKJwPk/pzbMyp4yjyEvD4UkNDKVk0ujz
	 DTW+ipQ6uHP7ZXTFKdNEq5mUiAux5O7rRWoEZw+vsafoV7PhejeHV8/TyZrmN2udux6MT
	 luqSG5D81YprsadO8Mst5QXOWZ49qf4NGQQFZD5J6iDTgtp2qEuaSSCZfwmuv3t7ZSVRH
	 BxcIACB/NSwYLnbgnnIav4nJz1hebTWLylT+hvLHx89WQ8Mp4BkO71B4JwYoS2nnnbaZC
	 FqJ2/kG5UZtUi2spByEC9sAVSloypdS9cgbOBctYccIiAinW6znVKPQ4yneCIbUA3Iw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793214807;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=rxyzYAGXZN4K1QyJIptG398c5t07G5RRs8Lr8kP5D5o=;
	b=3KRKHNzRnV7iuZJK8M6VBLPiiunXXvu/I8CcboHn9F56UKg8cKThnmtFB0ZdObtmUyHf
	 WQaR5SkFXifDDBO6fwPeqDy4hjCwVMOh+WJIalk5XwPxOPhMfC8+KUVTr2OSDSV7DixXH
	 0+C92YxI9GhwreYfdK71FuxhpR+xTQRWzbMdY2uG+jwDMEfa1lE8xNQpMYqNuhUIm0I8j
	 UZ1YNw+I/MzdBesZWsU5Xrl2hckgA+EBMrikP3qSiBh1PgCljdDXCWxEYZA9palgui9W6
	 GM/Y6dkpDNFoUxk6iT1IePYbCB4shNbejOymcenNxeAh/5Tb1OJbAuSGpIe0YhpOi+Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lBneXDvs;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A05606BF8E
	for <keys@linux.kernel.org>; Wed, 28 Oct 2026 19:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lBneXDvs
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AA5A1F031E0;
	Wed, 28 Oct 2026 19:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793214806;
	bh=rxyzYAGXZN4K1QyJIptG398c5t07G5RRs8Lr8kP5D5o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lBneXDvsSuOVc1rG/aN4BavOypL37NhtOUrI+RVnQcpxbs4xTOZiKKMqhNu9p8Xvy
	 x1KKeb3XvFdof9dhKpI9P9EoBPeKoOQp95LpeUP13YOoNRUhkpJ85SY8rb/yNmaCLH
	 eFFfmCc8WLRds/o6fM5xs+WcXw6jne0IH7HwpQqaasrBF0Ij7nWan9Yk28AkMcvuAF
	 2sFSYNBZNvFeR/XDnnXbRqV6nJ0j1X+2nF4hFDrW9OojYvSE+Z4FWN6gSyxw/Rh3A2
	 gxtMgQLFowXWryIKKA83UFHCBRs6S9YCE/SL+phQC5HEzqOUCY7Ier4KRKTyrMkdKH
	 zuAWC2vmnzufw==
Date: Wed, 28 Oct 2026 15:13:25 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Daniel Almeida <daniel.almeida@collabora.com>
Cc: keys@linux.kernel.org
Subject: Re: Key submission: Daniel Almeida
Message-ID: <20261028-undetectable-earwig-of-fruition-efd6d0@lemur>
References: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>
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
In-Reply-To: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>

On Tue, Oct 27, 2026 at 06:17:45PM -0300, Daniel Almeida wrote:
> Hi,
> 
> Please add my key to the kernel.org keyring. It is signed by
> Miguel Ojeda and Kent Overstreet.

Added.

Thanks,
-K
