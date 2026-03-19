Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105483E4C9D
	for <keys@linux.kernel.org>; Thu, 19 Mar 2026 15:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773934379; cv=none; b=KAJXnY/vOdgCdltR58gg2fJAWOvNxa2F0EY6SDJ/laMowz2Y+Oti79CHBGqdHT+9Dyc1nb2PMwURkJVfrgO5+3EbYBOQzEf5nRMymkI3el25qlT7PpA3b9SHXNAPdsPRVg16jdUZgdjAP0bB3SFQTTlI1isptpA4umsZmE4N3VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773934379; c=relaxed/simple;
	bh=26SWVOTrl1QBE66Y2UxUl2SH2oFxt+fuPiORmLXoTtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MNDofhnC7NNNo7O6tyx7tNZFull9A3iHxOGob4TNTG8WD4jHOIoh6DuLQdHU9e+4CxQaVMUoiYC+S+6MymmROyZJNOSnHALV0k1Ai5CbIPI20wbBcViEvEENzU/Pn0WLyOIfXEfMvaYdSD4IX9BLIxV3fVmogzEBNBif3yjHDRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQuz/klQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQuz/klQ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82FBAC19424;
	Thu, 19 Mar 2026 15:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773934378;
	bh=26SWVOTrl1QBE66Y2UxUl2SH2oFxt+fuPiORmLXoTtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UQuz/klQD0TpsKucQ61my90ZOPTnLXMNtqgVHIRMt3Oy7XeOYfwJAn1bKc2n9oc8v
	 sgcwr4sdHpBmVvbO3qtv4YQqBXw6TlXJKWkD0NSBt1C6/sAGxtGL4n7e9Tjpz366Hq
	 rV7iInHa8t2emPnCCs/QHFWbeo+qcYvo26/AmN8jhU9pnu+0WhggIg6wYLm0lyNChr
	 CSNBRBKjx9WckpRxb24D8d8oVM6Cnch0SHT5hAq/qDxqK4nQdrXevEpb0E4j5TPyqu
	 wSIUtlsYqZlEjavvXjFQuCusTvQAVLQT/iUVAms6H3dGVpZBtRI+Ex5kz2olfWHEE9
	 p5K1ngJptRTeA==
Date: Thu, 19 Mar 2026 11:32:57 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update signature for Andi Shyti
Message-ID: <20260319-literate-fabulous-frog-7fdb2d@lemur>
References: <abs2KxqsUGpHungW@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <abs2KxqsUGpHungW@zenone.zhora.eu>

On Thu, Mar 19, 2026 at 12:34:25AM +0100, Andi Shyti wrote:
> Hi,
> 
> please find attached my signature with updated expiration date:

Updated, thanks!

-- 
KR
