Received: from smtp-out3.simply.com (smtp-out3.simply.com [94.231.106.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A696C371056
	for <keys@linux.kernel.org>; Mon,  9 Feb 2026 12:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=94.231.106.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770640759; cv=none; b=UgMxcEbnSaJq2vRFa8SChLRxJoqEc11W0DWDnzq32J+jzSiJFx5fG0GJ7SI9kbN+CjX8xvj4EWYJyudIr86O/KyRb5XwaHY840Z9wtnEhmhVDqNy2+9yt8bG0MN/cFOi/gYNdurIIbR5CfggQFxjIWsyOwcKNt/atcr3Uz4NHvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770640759; c=relaxed/simple;
	bh=2R57CuPKnnib02uV2GyiRH+FL0tzyGYQY8hJVn1jf8k=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=fmNnPvxXlqvJx2Soxwlg940u7NYN+hHub+jWW3vxn4KEMwc3lmQGFtvZeingRDqYzYrbTICJwYO2teu1kw7jnXYXE1cNUJhom+AssulRjh9rrlpZDXhhhQPHC6qqn0IiaplK1wzf+FSTNIpIFegnsodXzHJ+ZCEkLbT37MhxnB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gaisler.com; spf=pass smtp.mailfrom=gaisler.com; dkim=fail (0-bit key) header.d=gaisler.com header.i=@gaisler.com header.b=GeWWvZlR reason="key not found in DNS"; arc=none smtp.client-ip=94.231.106.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gaisler.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gaisler.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=gaisler.com header.i=@gaisler.com header.b="GeWWvZlR"
Received: from localhost (localhost [127.0.0.1])
	by smtp.simply.com (Simply.com) with ESMTP id 4f8kln00ckz1DR2Z;
	Mon,  9 Feb 2026 13:39:17 +0100 (CET)
Received: from [10.10.15.18] (h-98-128-223-123.NA.cust.bahnhof.se [98.128.223.123])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by smtp.simply.com (Simply.com) with ESMTPSA id 4f8klm5VKMz1DDh4;
	Mon,  9 Feb 2026 13:39:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gaisler.com;
	s=simplycom2; t=1770640756;
	bh=7lBxjgNZBlaDBScsN4OWR6UB5Ufr2uN8/L/SjNXnTi4=;
	h=Date:Subject:From:To:References:In-Reply-To;
	b=GeWWvZlRmtxqW/K3fT/8KtF9Bff7p0zq5+BOjFx88J0+Fudu7VacZR18D2m6rQoNw
	 dH00JtrEsQyCbK+/LxF3VRLFGLdq+JlR7wEsEQ9i1Jwiga0JlmG2wt/E9pEAI6LHo2
	 19PsjBYAwRY0INGAIai4rwY/vHSr/B1OCzJAH4WsG8V733ZLqjM/Rk+bsHu2E7/4pD
	 mymEfaP8kMxxaJKdD7QIin+Zr5laDljXn4cv1O4KElwvA3H1xpHh5SnKOT1FxP0GZh
	 VQ6L2YoUyqbrsJJTXmJqGTbdftRH18IUmtXM8u80sJIoaG4J6PGMAwIRRSrAW7Px+q
	 joQk6wsApDDIA==
Message-ID: <26cb3e04-e193-4e1f-bc4f-28d9a2f94671@gaisler.com>
Date: Mon, 9 Feb 2026 13:39:16 +0100
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Key update for Andreas Larsson
From: Andreas Larsson <andreas@gaisler.com>
To: keys@linux.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
References: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
Content-Language: en-US
In-Reply-To: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2026-01-30 10:06, Andreas Larsson wrote:
> Hi,
> 
> Could you please update my soon to expire key in the kernel keyring.

Ping. Would appreciate an update. 

Old key has now expired and pull request has been sent before I realized
that my key update had not been picked up. Update now also available
through keys.openpgp.org.

Cheers,
Andreas

