Received: from submarine.notk.org (submarine.notk.org [62.210.214.84])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65EE19307D
	for <keys@linux.kernel.org>; Sat, 30 Nov 2024 22:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.210.214.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733006441; cv=none; b=qBFIW0LY8yjBXEaN+uwu2SfQfSFlfODF/rc9ZB7DN/o70fbIC9qSLvftWvROPS6fKzsEGmWivRo/RZEE0yD5C1Yxn2Gu/7WAx+1AOkJdFSmHMAo/eKEBRg9jueyxQoSx+bqVIj5pVhZRC1YwpwPMMuZ6TPTrUUlBq+v5FMwkxt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733006441; c=relaxed/simple;
	bh=MhtckuX0aZvJamYT9fwoNV5uwSpVwIuBoPs+3GAWgQ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eHBpNhdZQ4/EGI17W4mwKKzBFMXpEZZKmlRf6AypfihObB/bnH5A/v7nFSDRAdYL/4UuBc5JMvCr1KmnXlILp9ceNOGEwpStcWmLG1KNWrmsaUbUEpIanVK4po1u37cXtdS5IorodUy7eQvMQnFbJR7ke80aFwvN2ZiWNUCRn5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codewreck.org; spf=pass smtp.mailfrom=codewreck.org; dkim=pass (2048-bit key) header.d=codewreck.org header.i=@codewreck.org header.b=o+pg81Ni; arc=none smtp.client-ip=62.210.214.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codewreck.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codewreck.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codewreck.org header.i=@codewreck.org header.b="o+pg81Ni"
Received: from gaia.codewreck.org (localhost [127.0.0.1])
	by submarine.notk.org (Postfix) with ESMTPS id D4A7014C1E1;
	Sat, 30 Nov 2024 23:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
	s=2; t=1733006429;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/hy2mtpuw08JoWRrHj2XCuJWl4cp8p95E1JlWK9aPN0=;
	b=o+pg81NisFLp3tXRRbYfobND4u576A1+R3FQh1CkGPFZ+POzfmKToXNRO8cNIJVvcoP1b7
	x2tLuj8oxKv0Gf6NheqNQ0XPL2phAebJzZ4IBv0owSTA06cmx8BumpspgYyd2i4kofSqh4
	z7YSE3rN9gsHc5Z5rtmT6Jz/X04NXs/9nBfNnrRcx2Tchy5VSQPTdCnjYCf5al5DqxYC09
	i7UGIKNv0gf6Zr8HdgGJdRARCkboi09Bt6Ayq0H+z3W3GSAFnoduZSeg2xDFuI41ml/pEk
	UQRsaiZHx1tAUhmo2LPczulYO7/OZsB4wJGykDUduPtdQNQRMWT8cFaKv/oBhQ==
Received: from localhost (gaia.codewreck.org [local])
	by gaia.codewreck.org (OpenSMTPD) with ESMTPA id 6cb6a488;
	Sat, 30 Nov 2024 22:40:27 +0000 (UTC)
Date: Sun, 1 Dec 2024 07:40:12 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: update asmadeus@codewreck.org key
Message-ID: <Z0uUTCIyCL4XArgx@codewreck.org>
References: <Z0o010Bogv-Vf4AN@codewreck.org>
 <nedlzlzoibeqer3oimselen3hwpygrorpnuiy23fuxxmi2xtgz@nrwvcyatwszu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <nedlzlzoibeqer3oimselen3hwpygrorpnuiy23fuxxmi2xtgz@nrwvcyatwszu>

Konstantin Ryabitsev wrote on Sat, Nov 30, 2024 at 04:53:04PM -0500:
> On Sat, Nov 30, 2024 at 06:40:39AM +0900, Dominique Martinet wrote:
> > I was sure I sent it to keyservers back in august and was leaving it to
> > periodic updates but it apparently didn't make it :/
> 
> Not sure if you're looking in the correct place, because your key got updated
> back in September in commit 0604c53afee5fb0226ca993daca4a8d3595722bf:
> 
> https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/diff/keys/333F1F391BBBB00A.asc?id=0604c53afee5fb0226ca993daca4a8d3595722bf

Hmm, I (thought) I checked git log after fetching but I must not have
done that correctly, thanks for letting me know!

(And in this case I don't know why I couldn't --recv-key it earlier
yesterday, but if it worked for this repo it's great)

> However, I applied this update as well.

Thank you,
-- 
Dominique Martinet | Asmadeus
