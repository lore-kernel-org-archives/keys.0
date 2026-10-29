Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793266905;
	b=M+RFxlxQA0NBBdLnjGyafxLQxTr3fu4TgbMy7FhOZRYcxeb35bhAEiSCZM45XL/nNgwR
	 Mg4QghZ5C06kDotQhi6rfHIbsSybydRxhldCros7k7F5PshrhBE9fh3Y8pt72FPPxkExs
	 q1Ewg7/PFkjOj93zePCe93aagGIk+N3IY3v3LsMNm04GQlP3lkl8H79dDPvCMEavY5qYe
	 3LGOIIAI1j2I9yoYiPXsgPR/lAJfU794oKtY6h3bptmfpECn+/EAd8eTbaA0FrZhF0VMW
	 yGdEAh2tkqXPneTdCugb5JKj7QbzgKRwWlUYPHSNxNhi9cZcp0T144tT2Awa7/uYX+A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793266905;
	h=Received:Delivered-To:Received:DKIM-Signature:Message-ID:Date:
	 MIME-Version:User-Agent:Subject:To:Cc:References:From:
	 Content-Language:Autocrypt:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=bmnL8IJ28q94AAhaP6kACTl3DlBZr4PuKFi9kycNF9s=;
	b=V0FrJcatfWftyk0CwKZNAqX3r2595BjU9T4eK2NmUgnf30YUJJWgNMfk7T3tTtuF1eB8
	 JRXSaT4K867OxudtKCFebyly4BcrjqDO+gMHY4fLaO3PApM33h3bb72OSHN4yxbOtqf9p
	 EfveSMp6JGzdEOKeuzL/43q7ewkBGULS6xwhdq3+zaoHsJVZkcUWdPzcO4XGMFSMdS0On
	 vUYwjbNcEMYgbLgWOhnLudaUZvEw5K38f7I1tZg32CtoEBE2Wtk80L7Tam6BzrrhaHtob
	 fHcgrVpcK8/L9bi9K5X72bDGaRXxe4SNbZ+PRK4avoOYyMQ7liRsfaxMqlWcjFjXENQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WNqZznTE;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDFA606A31C
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 09:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WNqZznTE
Received: by smtp.kernel.org (Postfix)
	id 4FD3A1F01829; Thu, 29 Oct 2026 09:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 005BA1F01828;
	Thu, 29 Oct 2026 09:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793266905;
	bh=bmnL8IJ28q94AAhaP6kACTl3DlBZr4PuKFi9kycNF9s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=WNqZznTEYm67WkXyWVOSCpJww13v8FpGTvWcdJWU/m6fW6vl+p2yyptBrWskd6YeY
	 PMeJstaOKXm2uNSFbjeZ6dVA+tPHhXWXCTCyZ19BHtlfTcmpMYbfQHVhxInrSx9/4C
	 zHaBcFRmZTKdPpVgJBGnwsS8RhBbfsO3GS1KPpcAv3plcM9wsaU2hai/iJdn8BYLIg
	 f9litAxHSBPJDPxd95+PnDyBhWMGzgGCtq5pJUCvNAFlnL8eLmjoOEeRJezooDl5HK
	 +Pyhw+XPloclHJzuN6uM3C4istDz1vY1e5YhGb7eOGF3ccZsvG1cRJW8tYo2JwQ9/j
	 8AMkja0g2Jn1Q==
Message-ID: <15516f6e-d1af-4be1-8c24-8ae07e6e1101@kernel.org>
Date: Thu, 29 Oct 2026 10:41:40 +0100
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Updated PGP key 0C4312B8 (daeinki)
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Inki Dae <inki.dae@samsung.com>
Cc: keys@kernel.org, Inki Dae <daeinki@gmail.com>,
 Chanwoo Choi <cwchoi00@gmail.com>
References: <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com> <auMHShOWrcZpl2Vt@monoceros>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <auMHShOWrcZpl2Vt@monoceros>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 29/10/2026 09:54, Uwe Kleine-König wrote:
> Hello Inki,
> 
> On Thu, Oct 29, 2026 at 03:37:26PM +0900, Inki Dae wrote:
>> I have extended the expiration of my PGP key
>> 3512 8EA0 5ECD 85D3 C6A6 C727 5738 3489 0C43 12B8 (kernel.org account: daeinki).
>> The updated public key is below.
>>
>> -----BEGIN PGP PUBLIC KEY BLOCK-----
>>
>> mQINBFByVSABEAC3YtraHYqLMBl7qG48vfX9K69OTp7aPpoThy1kzkYc89r+dFHY
>> oJF/hJqzyVGeKgxaIlkpV2NTPeXvITZwDePfNlt4rrTgUtil22dFa6R6rX8UmUXp
>> [...]
>> vSaRm79eeDAhGPPkvBxwDf8Xz2x/AhnS9q8Ifwot+Yx+U966dx3ZR4jPhNmB35DW
>> T2f3xOgbI20WBkIWFa2QDDERcGqcNfm3OFadwpN4rGXYuBOJIRjMO40S3QrUFsuI
>> D3OLjvuZrrMH6BF4oA8MuqyJWeNUpA==
>> =MXVC
>> -----END PGP PUBLIC KEY BLOCK-----
> 
> That certficate (573834890C4312B8) isn't in the keyring yet, and it's
> not well enough connected to be added. The issue is that there are
> signatures by Chanwoo Choi (9CCDDF2CDEEBCF53) and Krzysztof Kozlowski
> (1B93437D3B41629B), but they are bound using SHA1 and so are not
> considered for additions to the keyring. (I added them to Cc: in case
> they want to resign your certificate.)

I did re-sign all my signatures as part of "resigned keys" effort, so
from my part this should not be a problem... but that might be after
your commit 2dd67ee0231ccc4ee53cb3d1fde10b122de1bd18 removing the
expired keys, so maybe I did not re-signed that one?

Considering Linus' position on expiration date, maybe we should not drop
them?


Best regards,
Krzysztof

